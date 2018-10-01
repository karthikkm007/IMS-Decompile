.class final Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureAccessWrapper"
.end annotation


# instance fields
.field public feature:I

.field public listener:Landroid/telephony/ims/ImsConfigListener;

.field public network:I

.field public value:I


# direct methods
.method public constructor <init>(IIILandroid/telephony/ims/ImsConfigListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    iput p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->network:I

    iput-object p4, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Landroid/telephony/ims/ImsConfigListener;

    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    return-void
.end method
