.class public Lcom/qualcomm/ims/vt/CameraActionSoundHelper;
.super Ljava/lang/Object;
.source "CameraActionSoundHelper.java"


# instance fields
.field mActionSound:Landroid/media/MediaActionSound;

.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo v0, "Ctor: Context is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "close: Releasing resources"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    iput-object v1, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "onRecordingStarted:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    return-void
.end method

.method public onRecordingStopped()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "onRecordingStopped:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    return-void
.end method

.method public open()V
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f030007

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    :cond_1
    const-string/jumbo v0, "open: Loading media files."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    return-void
.end method
