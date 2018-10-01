.class Lcom/qualcomm/ims/vt/LowBatteryHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "LowBatteryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/LowBatteryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BatteryIntent received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get2(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v3, p2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-wrap0(Lcom/qualcomm/ims/vt/LowBatteryHandler;Landroid/content/Intent;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-set0(Lcom/qualcomm/ims/vt/LowBatteryHandler;Z)Z

    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " allowVideoCallsInLowBattery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isCarrierOneSupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v4}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get1(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mIsLowbattery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v4}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get3(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get3(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get1(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-wrap2(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "disconnectVideoCalls on low battery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-wrap1(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    goto :goto_0
.end method
