while true
 
    puts "実施したい処理を選択してください"
    puts "1:評価ポイントとコメントを入力する"
    puts "2:今までの結果を確認する"
    puts "3:終了する"
    num  = gets.to_i


    #評価を入力するメソッド
    def point_evaluation
        puts "1から5で評価を入力してください"
        point = gets.to_i
        while point <= 0 || point > 5
            puts "1から5で入力してください"
            point = gets.to_i
        end
        puts "コメントを入力してください"
        comment = gets.chomp
        post = "ポイント：#{point} コメント：#{comment}"
        File.open("data.txt", "a") do |file|
            file.puts(post)
        end
    end


    #結果を表示するメソッド
    def result_point_comment
        puts "これまでの結果"
        File.open("data.txt", "r") do |file|
            file.each_line do |line|
                puts line
            end
        end
    end

    case num
    when 1
        point_evaluation
    when 2
        result_point_comment
    when 3
        puts "終了します"
        break
    else
        puts "1から3で入力してください"
    end
end