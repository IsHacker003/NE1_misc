.class public Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;
.super Ljava/lang/Object;
.source "NfcSettingsAdapter.java"


# static fields
.field static sNfcSettingsAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field static sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sNfcSettingsAdapters:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->mContext:Landroid/content/Context;

    .line 111
    invoke-static {}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->getServiceInterface()Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    move-result-object p1

    sput-object p1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    .line 112
    return-void
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;
    .locals 3

    .line 121
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    const-string p0, "NfcSettingsAdapter"

    const-string v0, "getDefaultAdapter = null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 126
    :cond_0
    sget-object v0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sNfcSettingsAdapters:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    .line 127
    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    invoke-direct {v0, p0}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;-><init>(Landroid/content/Context;)V

    .line 129
    sget-object v1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sNfcSettingsAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    sget-object p0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    if-nez p0, :cond_2

    .line 133
    invoke-static {}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->getServiceInterface()Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    move-result-object p0

    sput-object p0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    .line 134
    const-string p0, "NfcSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    const-string p0, "NfcSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v0
.end method

.method private static getServiceInterface()Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;
    .locals 4

    .line 143
    const-string v0, "nfc_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 144
    const-string v1, "NfcSettingsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "b = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_0
    invoke-static {v0}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public commitServiceEntryList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
            ">;)V"
        }
    .end annotation

    .line 309
    :try_start_0
    const-string v0, "persist.vendor.st_nfc_gsma_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    const-string p1, "NfcSettingsAdapter"

    const-string v0, "commitServiceEntryList GSMA is disabled"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 313
    :cond_0
    sget-object v0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    if-nez v0, :cond_1

    .line 314
    const-string p1, "NfcSettingsAdapter"

    const-string v0, "commitServiceEntryList sService = null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 317
    :cond_1
    const-string v0, "NfcSettingsAdapter"

    const-string v1, "sService.commitServiceEntryList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    invoke-interface {v0, p1}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;->commitServiceEntryList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    nop

    .line 324
    return-void

    .line 319
    :catch_0
    move-exception p1

    .line 321
    const-string v0, "NfcSettingsAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitServiceEntryList e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method public getModeFlag(I)I
    .locals 4

    .line 161
    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    if-nez v1, :cond_0

    .line 162
    const-string p1, "NfcSettingsAdapter"

    const-string v1, "getModeFlag sService = null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v0

    .line 166
    :cond_0
    const-string v1, "NfcSettingsAdapter"

    const-string v2, "sService.getModeFlag(mode)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    invoke-interface {v1, p1}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;->getModeFlag(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 168
    :catch_0
    move-exception p1

    .line 170
    const-string v1, "NfcSettingsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModeFlag e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v0
.end method

.method public getServiceEntryList(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
            ">;"
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "persist.vendor.st_nfc_gsma_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string p1, "NfcSettingsAdapter"

    const-string v1, "getServiceEntryList GSMA is disabled"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-object v0

    .line 261
    :cond_0
    sget-object v1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    if-nez v1, :cond_1

    .line 262
    const-string p1, "NfcSettingsAdapter"

    const-string v1, "getServiceEntryList sService = null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v0

    .line 265
    :cond_1
    const-string v1, "NfcSettingsAdapter"

    const-string v2, "sService.getServiceEntryList()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    invoke-interface {v1, p1}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;->getServiceEntryList(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 267
    :catch_0
    move-exception p1

    .line 269
    const-string v1, "NfcSettingsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceEntryList e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-object v0
.end method

.method public isShowOverflowMenu()Z
    .locals 5

    .line 231
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "persist.vendor.st_nfc_gsma_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const-string v1, "NfcSettingsAdapter"

    const-string v2, "isShowOverflowMenu GSMA is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v0

    .line 235
    :cond_0
    sget-object v1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    if-nez v1, :cond_1

    .line 236
    const-string v1, "NfcSettingsAdapter"

    const-string v2, "isShowOverflowMenu sService = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v0

    .line 239
    :cond_1
    const-string v1, "NfcSettingsAdapter"

    const-string v2, "sService.isShowOverflowMenu()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    invoke-interface {v1}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;->isShowOverflowMenu()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 241
    :catch_0
    move-exception v1

    .line 243
    const-string v2, "NfcSettingsAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShowOverflowMenu e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v0
.end method

.method public setModeFlag(II)V
    .locals 2

    .line 185
    :try_start_0
    sget-object v0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    if-nez v0, :cond_0

    .line 186
    const-string p1, "NfcSettingsAdapter"

    const-string p2, "setModeFlag sService = null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 189
    :cond_0
    const-string v0, "NfcSettingsAdapter"

    const-string v1, "sService.setModeFlag(mode)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;->setModeFlag(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 191
    :catch_0
    move-exception p1

    .line 193
    const-string p2, "NfcSettingsAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setModeFlag e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void
.end method

.method public testServiceEntryList(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
            ">;)Z"
        }
    .end annotation

    .line 283
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "persist.vendor.st_nfc_gsma_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-string p1, "NfcSettingsAdapter"

    const-string v1, "testServiceEntryList GSMA is disabled"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v0

    .line 287
    :cond_0
    sget-object v1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    if-nez v1, :cond_1

    .line 288
    const-string p1, "NfcSettingsAdapter"

    const-string v1, "testServiceEntryList sService = null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v0

    .line 291
    :cond_1
    const-string v1, "NfcSettingsAdapter"

    const-string v2, "sService.testServiceEntryList()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v1, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->sService:Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;

    invoke-interface {v1, p1}, Lcom/mediatek/nfcsettingsadapter/INfcSettingsAdapter;->testServiceEntryList(Ljava/util/List;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 293
    :catch_0
    move-exception p1

    .line 295
    const-string v1, "NfcSettingsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testServiceEntryList e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v0
.end method
