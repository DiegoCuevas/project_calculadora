puts "ingrese su operacion:"
op = gets.chomp
num = op.split("")
i=0
signos = ["+","-","*","/"]
while i < num.length
    if signos.include? (num[i])
        case num[i]
           when "**"
                res=num[i-1].to_i.send :**,num[i+1].to_i 
            # Lian: Este comando aun no funciona debido a que 
            # faltar mejorar el codigo para que acepte mas digitos.
            when "/"
                res=num[i-1].to_i.send :/,num[i+1].to_i
            when "*"
               res=num[i-1].to_i.send :*,num[i+1].to_i
            when "+"
                res=num[i-1].to_i.send :+,num[i+1].to_i
            when "-"
                res=num[i-1].to_i.send :-,num[i+1].to_i                       
            else
                res=0;
        end
        num[i-1]=res
        num.delete_at(i)
        num.delete_at(i)
        i = i - 1 
    end
i = i+1
end
        
puts num.inspect