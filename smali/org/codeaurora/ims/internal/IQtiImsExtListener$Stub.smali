.class public abstract Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;
.super Landroid/os/Binder;
.source "IQtiImsExtListener.java"

# interfaces
.implements Lorg/codeaurora/ims/internal/IQtiImsExtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/internal/IQtiImsExtListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.internal.IQtiImsExtListener"

.field static final TRANSACTION_notifyParticipantStatusInfo_10:I = 0xb

.field static final TRANSACTION_notifyRefreshViceInfo_9:I = 0xa

.field static final TRANSACTION_notifySsacStatus_8:I = 0x9

.field static final TRANSACTION_notifyVopsStatus_7:I = 0x8

.field static final TRANSACTION_onGetCallForwardUncondTimer_1:I = 0x2

.field static final TRANSACTION_onGetHandoverConfig_14:I = 0xf

.field static final TRANSACTION_onGetPacketCount_3:I = 0x4

.field static final TRANSACTION_onGetPacketErrorCount_4:I = 0x5

.field static final TRANSACTION_onSetCallForwardUncondTimer_0:I = 0x1

.field static final TRANSACTION_onSetHandoverConfig:I = 0xe

.field static final TRANSACTION_onUTReqFailed_2:I = 0x3

.field static final TRANSACTION_onVoltePreferenceQueried_12:I = 0xd

.field static final TRANSACTION_onVoltePreferenceUpdated_11:I = 0xc

.field static final TRANSACTION_receiveCallDeflectResponse_5:I = 0x6

.field static final TRANSACTION_receiveCallTransferResponse_6:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "org.codeaurora.ims.internal.IQtiImsExtListener"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "org.codeaurora.ims.internal.IQtiImsExtListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    return-object v0

    :cond_1
    new-instance v1, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onSetCallForwardUncondTimer(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_2
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v12}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetCallForwardUncondTimer(IIIIIILjava/lang/String;I)V

    const/4 v4, 0x1

    return v4

    :sswitch_3
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onUTReqFailed(ILjava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_4
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v5, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetPacketCount(IJ)V

    const/4 v4, 0x1

    return v4

    :sswitch_5
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v5, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetPacketErrorCount(IJ)V

    const/4 v4, 0x1

    return v4

    :sswitch_6
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->receiveCallDeflectResponse(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_7
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->receiveCallTransferResponse(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_8
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyVopsStatus(Z)V

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    :sswitch_9
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifySsacStatus(Z)V

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    :sswitch_a
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lorg/codeaurora/ims/QtiViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/codeaurora/ims/QtiViceInfo;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyRefreshViceInfo(Lorg/codeaurora/ims/QtiViceInfo;)V

    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :sswitch_b
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v6, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->notifyParticipantStatusInfo(IILjava/lang/String;Z)V

    const/4 v4, 0x1

    return v4

    :cond_3
    const/16 v19, 0x0

    goto :goto_3

    :sswitch_c
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onVoltePreferenceUpdated(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_d
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onVoltePreferenceQueried(II)V

    const/4 v4, 0x1

    return v4

    :sswitch_e
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onSetHandoverConfig(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_f
    const-string/jumbo v4, "org.codeaurora.ims.internal.IQtiImsExtListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->onGetHandoverConfig(II)V

    const/4 v4, 0x1

    return v4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
