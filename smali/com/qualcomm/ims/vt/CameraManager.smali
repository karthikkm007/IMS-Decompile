.class Lcom/qualcomm/ims/vt/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;,
        Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;,
        Lcom/qualcomm/ims/vt/CameraManager$IFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mFactory:Lcom/qualcomm/ims/vt/CameraManager$IFactory;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/ims/vt/CameraManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraManager;->shallUseCamera2()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;-><init>(Lcom/qualcomm/ims/vt/CameraManager;Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/CameraManager;->setFactory(Lcom/qualcomm/ims/vt/CameraManager$IFactory;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void

    :cond_0
    new-instance v0, Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;-><init>(Lcom/qualcomm/ims/vt/CameraManager;Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;)V

    goto :goto_0
.end method

.method static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/qualcomm/ims/vt/CameraManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qualcomm/ims/vt/CameraManager;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static open(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-string/jumbo v1, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open cameraid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " listener= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v1, v1, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v1, v1, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const-string/jumbo v2, "Camera is disabled."

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v1, v1, Lcom/qualcomm/ims/vt/CameraManager;->mFactory:Lcom/qualcomm/ims/vt/CameraManager$IFactory;

    invoke-interface {v1, p0, p1}, Lcom/qualcomm/ims/vt/CameraManager$IFactory;->create(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->open()V

    return-object v0
.end method

.method private shallUseCamera2()Z
    .locals 2

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method setFactory(Lcom/qualcomm/ims/vt/CameraManager$IFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager;->mFactory:Lcom/qualcomm/ims/vt/CameraManager$IFactory;

    return-void
.end method
