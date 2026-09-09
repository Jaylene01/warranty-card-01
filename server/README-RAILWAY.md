# WEIDE 保修卡系统 —— Railway 云端数据库版

这个 `server/` 文件夹是新的后台程序，把记录存在真正的云端数据库（Postgres），
这样不管用手机、电脑、哪一台设备打开，看到的都是同一份记录，不会像之前
localStorage 那样每台设备各自储存一份。

已经在本地测试过，功能全部正常（新增/修改/删除记录、下载图片都可以）。

## 第一步：把这个文件夹传到 GitHub

双击你桌面上原本那个 `同步到GitHub.bat`（在 WEIDE APP_01 里）就会自动把
这个新的 `server` 文件夹也传上去，不用额外操作。

## 第二步：在 Railway 上连接

有两个办法，选一个就好：

### 办法A：让我直接帮你连接（比较快）

在这个对话的连接工具设置里，把 **Railway** 打开（你的 Railway 账号
已经连接到 Claude 了，只是这个对话里还没开启）。开启后跟我说一声，
我可以直接帮你在 Railway 建好 Postgres 数据库、建好服务、接好线，
跟你截图那样。

### 办法B：自己在 Railway 网站上点几下（跟着截图做）

1. 打开 railway.app，登入你的账号
2. 新建一个 Project（如果还没有的话）
3. 点 **+ New** → **Database** → **Add PostgreSQL**（数据库图标那个）
4. 再点 **+ New** → **GitHub Repo** → 选择 `warranty-card-02` 这个仓库
5. 这个新服务建好后，点进它的 **Settings**，把 **Root Directory** 设成 `server`
6. 还是这个服务，点 **Variables** 分页：
   - 点 **New Variable** → **Add Reference**，选刚才那个 Postgres 服务，
     选 `DATABASE_URL` —— 这样两个服务之间就会画出一条线连起来，跟你截图一样
   - 再手动加两个变量：
     - `APP_USERNAME` = 你想要的登录帐号，例如 `weide`
     - `APP_PASSWORD` = 你想要的登录密码
7. 点 **Settings** → **Networking** → **Generate Domain**，会给你一个网址，
   例如 `warranty-card-production.up.railway.app`
8. 打开这个网址，浏览器会弹出登录框，输入第6步设定的帐号密码就能用了

以后无论是电脑还是手机，打开这个网址、输入帐号密码，看到的都是同一份记录。

## 说明

- 之前 GitHub Pages 那个网址（存在浏览器本地的那个版本）还是可以继续用，
  但记录不会跟 Railway 版本同步 —— 建议之后日常使用改用 Railway 这个新网址，
  这样记录才会在所有设备上同步。
- 忘记密码或想改密码：在 Railway 的 Variables 里改 `APP_PASSWORD` 就可以了。
