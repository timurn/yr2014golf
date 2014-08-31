yr2014golf
==========

Конкурс Perl Golf для YAPC::Russia 2014

«Число Эрдёша»

Венгерский математик Эрдёш написал за свою жизнь 1475 статей, причём многие из
этих работ были созданы в соавторстве. Традиционно в математике совместная
статья является скорее исключением, чем правилом, поэтому наличие такого
большого числа соавторов породило в фольклоре математиков понятие «число Эрдёша».

Это число определяется следующим образом:
    у самого Эрдёша оно равно нулю,
    у непосредственных соавторов Эрдёша это число равно единице,
    соавторы людей с числом Эрдёша, равным n, имеют число Эрдёша n+1.
    Из нескольких вариантов связей выбирается самый короткий, т. е. минимально
    возможное число.

Входные данные:
Первая строка содержит фамилию учёного, для которого нужно определить число
Эрдёша. Последующие строки содержат список публикаций: фамилии авторов через
запятую и пробел, и название работы, отделённое двоеточием. Заданная фамилия
может не присутствовать ни в одной публикации.

Пример:  
Chen  
Smith, M.N., Martin, G., Erdos, P.: Newtonian forms of prime factor matrices  
Erdos, P., Reisig, W.: Stuttering in petri nets  
Smith, M.N., Chen, X.: First oder derivates in structured programming  
Jablonski, T., Hsueh, Z.: Selfstabilizing data structures

Данные подаются на STDIN:  
cat data | perl golf.pl.

Необходимо вывести число Эрдёша для заданного учёного. В случае, если связи с
Эрдёшем нет — вывести Inf.

Проверить работоспособность решения можно приложенным набором тестов:  
prove test.pl

Размер решения можно вычислить с помощью скрипта golfcount.pl:  
perl golfcount.pl golf.pl
