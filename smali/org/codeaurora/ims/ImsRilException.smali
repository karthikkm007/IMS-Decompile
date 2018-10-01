.class public Lorg/codeaurora/ims/ImsRilException;
.super Ljava/lang/RuntimeException;
.source "ImsRilException.java"


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsRilException;->mErrorCode:I

    return v0
.end method
