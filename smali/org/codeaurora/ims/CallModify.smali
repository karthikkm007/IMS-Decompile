.class public Lorg/codeaurora/ims/CallModify;
.super Ljava/lang/Object;
.source "CallModify.java"


# static fields
.field public static E_CANCELLED:I

.field public static E_SUCCESS:I

.field public static E_UNUSED:I


# instance fields
.field public call_details:Lorg/codeaurora/ims/CallDetails;

.field public call_index:I

.field public error:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    const/4 v0, 0x7

    sput v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    const/16 v0, 0x10

    sput v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallDetails;I)V
    .locals 1

    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;II)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallDetails;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iput p2, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iput p3, p0, Lorg/codeaurora/ims/CallModify;->error:I

    return-void
.end method


# virtual methods
.method public error()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/codeaurora/ims/CallModify;->error:I

    sget v2, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/codeaurora/ims/CallModify;->error:I

    sget v2, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setCallDetails(Lorg/codeaurora/ims/CallDetails;)V
    .locals 1

    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/CallModify;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
