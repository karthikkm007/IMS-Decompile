.class Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;
.super Ljava/lang/Object;
.source "ImsCallSessionListenerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->callSessionResumeReceived(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

.field final synthetic val$profile:Lcom/android/ims/ImsCallProfile;

.field final synthetic val$session:Landroid/telephony/ims/IImsCallSession;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionListenerProxy;
    .param p2, "val$session"    # Landroid/telephony/ims/IImsCallSession;
    .param p3, "val$profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 335
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;->val$session:Landroid/telephony/ims/IImsCallSession;

    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;->val$profile:Lcom/android/ims/ImsCallProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->mListener:Landroid/telephony/ims/IImsCallSessionListener;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;->val$session:Landroid/telephony/ims/IImsCallSession;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;->val$profile:Lcom/android/ims/ImsCallProfile;

    invoke-interface {v1, v2, v3}, Landroid/telephony/ims/IImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionListenerProxy$13;->this$0:Lorg/codeaurora/ims/ImsCallSessionListenerProxy;

    const-string/jumbo v2, "onCallSessionResumeReceived()"

    invoke-static {v1, v0, v2}, Lorg/codeaurora/ims/ImsCallSessionListenerProxy;->-wrap1(Lorg/codeaurora/ims/ImsCallSessionListenerProxy;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
