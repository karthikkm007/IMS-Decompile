.class Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartCallForward.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/SmartCallForward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubInfoBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/SmartCallForward;


# direct methods
.method private constructor <init>(Lorg/codeaurora/ims/SmartCallForward;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codeaurora/ims/SmartCallForward;Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;-><init>(Lorg/codeaurora/ims/SmartCallForward;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->-wrap0(Lorg/codeaurora/ims/SmartCallForward;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->-get0(Lorg/codeaurora/ims/SmartCallForward;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->-wrap1(Lorg/codeaurora/ims/SmartCallForward;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->-get0(Lorg/codeaurora/ims/SmartCallForward;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;->this$0:Lorg/codeaurora/ims/SmartCallForward;

    invoke-static {v1}, Lorg/codeaurora/ims/SmartCallForward;->-wrap3(Lorg/codeaurora/ims/SmartCallForward;)V

    goto :goto_0
.end method
