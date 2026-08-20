local placeId = game.PlaceId

local scripts = {
    [93978595733734] = {url = "https://github.com/b00l08g87b/fm/raw/refs/heads/main/farmx", name = "FarmX"},
    [94640181989498] = {url = "https://raw.githubusercontent.com/b00l08g87b/fm/refs/heads/main/ufo", name = "UFO"},
}

local function notify(title, text, duration)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration or 3,
    })
end

local entry = scripts[placeId]

if entry then
    notify("Loading...", entry.name .. " akan dijalankan dalam 3 detik", 3)
    task.wait(3)
    notify("Executing", "Menjalankan " .. entry.name .. "...", 2)
    task.wait(0.5)
    loadstring(game:HttpGet(entry.url))()
    task.wait(1)
    notify("Done ✓", entry.name .. " berhasil dijalankan!", 3)
else
    notify("Not Found", "Tidak ada script untuk place ini.", 3)
end