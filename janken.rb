puts "じゃんけん..."

def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    
    #じゃんけんのコマンド
    janken_command = gets.to_i
    enemy_command = rand(2)
    
    jankens = ["グー", "チョキ", "パー"]
    faces = ["上", "右", "下", "左"]
    
      if janken_command == enemy_command
        puts "ホイ！"
        puts "----------------"
        puts "あなた:#{jankens[janken_command]}, 相手:#{jankens[enemy_command]}"
        puts "あいこで〜"
        return true
        
      elsif(janken_command == 0 && enemy_command == 1)||(janken_command == 1 && enemy_command == 2)||(janken_command == 2 && enemy_command == 0)
        puts "ホイ！"
        puts "----------------"
        puts "あなた:#{jankens[janken_command]}, 相手:#{jankens[enemy_command]}"
        puts "あっちむいて〜"
        puts "0(上)1(右)2(下)3(左)"
        
        face_pattern = gets.to_i
        enemy_face_command = rand(3)
        
        if (face_pattern == 0 && enemy_face_command == 0)||(face_pattern == 1 && enemy_face_command == 1)||(face_pattern == 2 && enemy_face_command == 2)||(face_pattern == 3 && enemy_face_command == 3)
          puts "ホイ！"
          puts "----------------"
          puts "あなた:#{faces[face_pattern]}, 相手:#{faces[enemy_face_command]}"
          puts "あなたの勝ち"
        else
          puts "ホイ！"
          puts "----------------"
          puts "あなた:#{faces[face_pattern]}, 相手:#{faces[enemy_face_command]}"
          return true
        end
        
      elsif(janken_command == 0 && enemy_command == 2)||(janken_command == 1 && enemy_command == 0)||(janken_command == 2 && enemy_command == 1)
        puts "ホイ！"
        puts "----------------"
        puts "あなた:#{jankens[janken_command]}, 相手:#{jankens[enemy_command]}"
        puts "あっちむいて〜"
         puts "0(上)1(右)2(下)3(左)"
        
        face_pattern = gets.to_i
        enemy_face_command = rand(3)
        
        if (face_pattern == 0 && enemy_face_command == 0)||(face_pattern == 1 && enemy_face_command == 1)||(face_pattern == 2 && enemy_face_command == 2)||(face_pattern == 3 && enemy_face_command == 3)
          puts "ホイ！"
          puts "----------------"
          puts "あなた:#{faces[face_pattern]}, 相手:#{faces[enemy_face_command]}"
          puts "あなたの負け"
        else
          puts "ホイ！"
          puts "----------------"
          puts "あなた:#{faces[face_pattern]}, 相手:#{faces[enemy_face_command]}"
          return true
        end
        
      else
      puts "----------------"
      puts "あなたは戦わなかった"
      
    end
end

next_game = true
while next_game
  next_game = janken
end