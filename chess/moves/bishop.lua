function get_pos_moves_bishop(file, rank, color)
    -- Bishop logic
    posMoves = {}

    r = rank
    f = file
    while r > 1 and f > 1 do
        posMove = files[f-1]..ranks[r-1]
        if posOccupied(posMove) then
            if positions[posMove].piece.color == getEnemyColor(color) then
                posMoves[#posMoves+1] = posMove
                break
            else
                break
            end
        end
        posMoves[#posMoves+1] = posMove
        r = r - 1
        f = f - 1
    end
    r = rank
    f = file
    while r < 8 and f > 1 do
        posMove = files[f-1]..ranks[r+1]
        if posOccupied(posMove) then
            if positions[posMove].piece.color == getEnemyColor(color) then
                posMoves[#posMoves+1] = posMove
                break
            else
                break
            end
        end
        posMoves[#posMoves+1] = posMove

        r = r + 1
        f = f - 1 
    end
    r = rank
    f = file
    while r > 1 and f < 8 do
        posMove = files[f+1]..ranks[r-1]
        if posOccupied(posMove) then
            if positions[posMove].piece.color == getEnemyColor(color) then
                posMoves[#posMoves+1] = posMove
                break
            else
                break
            end
        end
        posMoves[#posMoves+1] = posMove

        r = r - 1
        f = f + 1
    end
    r = rank
    f = file
    while r < 8 and f < 8 do
        posMove = files[f+1]..ranks[r+1]
        if posOccupied(posMove) then
            if positions[posMove].piece.color == getEnemyColor(color) then
                posMoves[#posMoves+1] = posMove
                break
            else
                break
            end
        end
        posMoves[#posMoves+1] = posMove

        r = r + 1
        f = f + 1
    end

    return posMoves
end

