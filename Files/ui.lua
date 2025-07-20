-- Decompiled Roblox Object (RBXM) to Luau

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Library"
ScreenGui.ResetOnSpawn = false

-- ScrollingFrame
local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Name = "Container"
ScrollingFrame.Parent = ScreenGui
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 2, 0)
ScrollingFrame.ScrollBarThickness = 0

-- UIListLayout
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ScrollingFrame
UIListLayout.Padding = UDim.new(0, 10)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Frame (Title)
local TitleFrame = Instance.new("Frame")
TitleFrame.Name = "Title"
TitleFrame.Parent = ScrollingFrame
TitleFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TitleFrame.Size = UDim2.new(1, 0, 0, 50)

local TitleUICorner = Instance.new("UICorner")
TitleUICorner.CornerRadius = UDim.new(0, 6)
TitleUICorner.Parent = TitleFrame

local TitleText = Instance.new("TextLabel")
TitleText.Name = "Text"
TitleText.Parent = TitleFrame
TitleText.BackgroundTransparency = 1
TitleText.Size = UDim2.new(1, 0, 1, 0)
TitleText.Font = Enum.Font.GothamBold
TitleText.Text = "Abyss"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextSize = 20
TitleText.TextXAlignment = Enum.TextXAlignment.Left

local TitlePadding = Instance.new("UIPadding")
TitlePadding.Parent = TitleText
TitlePadding.PaddingLeft = UDim.new(0, 15)

-- Frame (Section)
local SectionFrame = Instance.new("Frame")
SectionFrame.Name = "Section"
SectionFrame.Parent = ScrollingFrame
SectionFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SectionFrame.Size = UDim2.new(1, 0, 0, 100)

local SectionUICorner = Instance.new("UICorner")
SectionUICorner.CornerRadius = UDim.new(0, 6)
SectionUICorner.Parent = SectionFrame

local SectionTitle = Instance.new("TextLabel")
SectionTitle.Name = "Text"
SectionTitle.Parent = SectionFrame
SectionTitle.BackgroundTransparency = 1
SectionTitle.Position = UDim2.new(0, 15, 0, 10)
SectionTitle.Size = UDim2.new(1, -30, 0, 20)
SectionTitle.Font = Enum.Font.Gotham
SectionTitle.Text = "Settings"
SectionTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
SectionTitle.TextSize = 16
SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

-- Button
local Button = Instance.new("TextButton")
Button.Name = "Button"
Button.Parent = ScrollingFrame
Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Button.Size = UDim2.new(1, 0, 0, 40)
Button.AutoButtonColor = true
Button.Font = Enum.Font.Gotham
Button.Text = "Button"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14

local ButtonUICorner = Instance.new("UICorner")
ButtonUICorner.CornerRadius = UDim.new(0, 6)
ButtonUICorner.Parent = Button

-- Toggle
local ToggleFrame = Instance.new("Frame")
ToggleFrame.Name = "Toggle"
ToggleFrame.Parent = ScrollingFrame
ToggleFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ToggleFrame.Size = UDim2.new(1, 0, 0, 40)

local ToggleUICorner = Instance.new("UICorner")
ToggleUICorner.CornerRadius = UDim.new(0, 6)
ToggleUICorner.Parent = ToggleFrame

local ToggleText = Instance.new("TextLabel")
ToggleText.Name = "Text"
ToggleText.Parent = ToggleFrame
ToggleText.BackgroundTransparency = 1
ToggleText.Position = UDim2.new(0, 15, 0, 0)
ToggleText.Size = UDim2.new(0.7, -15, 1, 0)
ToggleText.Font = Enum.Font.Gotham
ToggleText.Text = "Toggle"
ToggleText.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleText.TextSize = 14
ToggleText.TextXAlignment = Enum.TextXAlignment.Left

local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ToggleFrame
ToggleButton.AnchorPoint = Vector2.new(1, 0.5)
ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ToggleButton.Position = UDim2.new(1, -15, 0.5, 0)
ToggleButton.Size = UDim2.new(0, 50, 0, 25)
ToggleButton.AutoButtonColor = false
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = ""
ToggleButton.TextSize = 14

local ToggleButtonUICorner = Instance.new("UICorner")
ToggleButtonUICorner.CornerRadius = UDim.new(0, 12)
ToggleButtonUICorner.Parent = ToggleButton

local ToggleIndicator = Instance.new("Frame")
ToggleIndicator.Name = "Indicator"
ToggleIndicator.Parent = ToggleButton
ToggleIndicator.AnchorPoint = Vector2.new(0, 0.5)
ToggleIndicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleIndicator.Position = UDim2.new(0, 3, 0.5, 0)
ToggleIndicator.Size = UDim2.new(0, 19, 0, 19)

local ToggleIndicatorUICorner = Instance.new("UICorner")
ToggleIndicatorUICorner.CornerRadius = UDim.new(0, 9)
ToggleIndicatorUICorner.Parent = ToggleIndicator

-- Slider
local SliderFrame = Instance.new("Frame")
SliderFrame.Name = "Slider"
SliderFrame.Parent = ScrollingFrame
SliderFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SliderFrame.Size = UDim2.new(1, 0, 0, 70)

local SliderUICorner = Instance.new("UICorner")
SliderUICorner.CornerRadius = UDim.new(0, 6)
SliderUICorner.Parent = SliderFrame

local SliderText = Instance.new("TextLabel")
SliderText.Name = "Text"
SliderText.Parent = SliderFrame
SliderText.BackgroundTransparency = 1
SliderText.Position = UDim2.new(0, 15, 0, 10)
SliderText.Size = UDim2.new(1, -30, 0, 20)
SliderText.Font = Enum.Font.Gotham
SliderText.Text = "Slider"
SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderText.TextSize = 14
SliderText.TextXAlignment = Enum.TextXAlignment.Left

local SliderValue = Instance.new("TextLabel")
SliderValue.Name = "Value"
SliderValue.Parent = SliderFrame
SliderValue.BackgroundTransparency = 1
SliderValue.Position = UDim2.new(1, -15, 0, 10)
SliderValue.Size = UDim2.new(0, 50, 0, 20)
SliderValue.AnchorPoint = Vector2.new(1, 0)
SliderValue.Font = Enum.Font.Gotham
SliderValue.Text = "50"
SliderValue.TextColor3 = Color3.fromRGB(200, 200, 200)
SliderValue.TextSize = 14
SliderValue.TextXAlignment = Enum.TextXAlignment.Right

local SliderTrack = Instance.new("Frame")
SliderTrack.Name = "Track"
SliderTrack.Parent = SliderFrame
SliderTrack.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SliderTrack.Position = UDim2.new(0, 15, 0, 40)
SliderTrack.Size = UDim2.new(1, -30, 0, 5)

local SliderTrackUICorner = Instance.new("UICorner")
SliderTrackUICorner.CornerRadius = UDim.new(0, 2)
SliderTrackUICorner.Parent = SliderTrack

local SliderFill = Instance.new("Frame")
SliderFill.Name = "Fill"
SliderFill.Parent = SliderTrack
SliderFill.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
SliderFill.Size = UDim2.new(0.5, 0, 1, 0)

local SliderFillUICorner = Instance.new("UICorner")
SliderFillUICorner.CornerRadius = UDim.new(0, 2)
SliderFillUICorner.Parent = SliderFill

local SliderThumb = Instance.new("TextButton")
SliderThumb.Name = "Thumb"
SliderThumb.Parent = SliderTrack
SliderThumb.AnchorPoint = Vector2.new(0.5, 0.5)
SliderThumb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderThumb.Position = UDim2.new(0.5, 0, 0.5, 0)
SliderThumb.Size = UDim2.new(0, 15, 0, 15)
SliderThumb.AutoButtonColor = false
SliderThumb.Text = ""

local SliderThumbUICorner = Instance.new("UICorner")
SliderThumbUICorner.CornerRadius = UDim.new(0, 7)
SliderThumbUICorner.Parent = SliderThumb

-- TextBox (Input)
local InputFrame = Instance.new("Frame")
InputFrame.Name = "Input"
InputFrame.Parent = ScrollingFrame
InputFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
InputFrame.Size = UDim2.new(1, 0, 0, 40)

local InputUICorner = Instance.new("UICorner")
InputUICorner.CornerRadius = UDim.new(0, 6)
InputUICorner.Parent = InputFrame

local InputTextBox = Instance.new("TextBox")
InputTextBox.Name = "TextBox"
InputTextBox.Parent = InputFrame
InputTextBox.BackgroundTransparency = 1
InputTextBox.Position = UDim2.new(0, 15, 0, 0)
InputTextBox.Size = UDim2.new(1, -30, 1, 0)
InputTextBox.Font = Enum.Font.Gotham
InputTextBox.PlaceholderText = "Write something here..."
InputTextBox.Text = ""
InputTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputTextBox.TextSize = 14
InputTextBox.TextXAlignment = Enum.TextXAlignment.Left

-- Keybind
local KeybindFrame = Instance.new("Frame")
KeybindFrame.Name = "Keybind"
KeybindFrame.Parent = ScrollingFrame
KeybindFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
KeybindFrame.Size = UDim2.new(1, 0, 0, 40)

local KeybindUICorner = Instance.new("UICorner")
KeybindUICorner.CornerRadius = UDim.new(0, 6)
KeybindUICorner.Parent = KeybindFrame

local KeybindText = Instance.new("TextLabel")
KeybindText.Name = "Text"
KeybindText.Parent = KeybindFrame
KeybindText.BackgroundTransparency = 1
KeybindText.Position = UDim2.new(0, 15, 0, 0)
KeybindText.Size = UDim2.new(0.7, -15, 1, 0)
KeybindText.Font = Enum.Font.Gotham
KeybindText.Text = "Keybind"
KeybindText.TextColor3 = Color3.fromRGB(255, 255, 255)
KeybindText.TextSize = 14
KeybindText.TextXAlignment = Enum.TextXAlignment.Left

local KeybindButton = Instance.new("TextButton")
KeybindButton.Name = "KeybindButton"
KeybindButton.Parent = KeybindFrame
KeybindButton.AnchorPoint = Vector2.new(1, 0.5)
KeybindButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
KeybindButton.Position = UDim2.new(1, -15, 0.5, 0)
KeybindButton.Size = UDim2.new(0, 80, 0, 25)
KeybindButton.Font = Enum.Font.Gotham
KeybindButton.Text = "None"
KeybindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
KeybindButton.TextSize = 14

local KeybindButtonUICorner = Instance.new("UICorner")
KeybindButtonUICorner.CornerRadius = UDim.new(0, 4)
KeybindButtonUICorner.Parent = KeybindButton

-- Label
local LabelFrame = Instance.new("Frame")
LabelFrame.Name = "Text"
LabelFrame.Parent = ScrollingFrame
LabelFrame.BackgroundTransparency = 1
LabelFrame.Size = UDim2.new(1, 0, 0, 50)

local LabelText = Instance.new("TextLabel")
LabelText.Name = "Text"
LabelText.Parent = LabelFrame
LabelText.BackgroundTransparency = 1
LabelText.Size = UDim2.new(1, 0, 1, 0)
LabelText.Font = Enum.Font.Gotham
LabelText.Text = "This button does something."
LabelText.TextColor3 = Color3.fromRGB(200, 200, 200)
LabelText.TextSize = 14
LabelText.TextWrapped = true
LabelText.TextXAlignment = Enum.TextXAlignment.Left

local LabelPadding = Instance.new("UIPadding")
LabelPadding.Parent = LabelText
LabelPadding.PaddingLeft = UDim.new(0, 15)
LabelPadding.PaddingRight = UDim.new(0, 15)

return ScreenGui
