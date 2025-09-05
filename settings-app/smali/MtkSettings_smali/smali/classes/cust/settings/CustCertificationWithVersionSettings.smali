.class public Lcust/settings/CustCertificationWithVersionSettings;
.super Landroid/app/Activity;
.source "CustCertificationWithVersionSettings.java"


# static fields
.field private static elabel1_version:I

.field private static elabel2_version:I

.field private static elabel3_version:I

.field private static hwID:Ljava/lang/String;

.field private static hwID_slot:Ljava/lang/String;

.field private static slot:Ljava/lang/String;

.field private static ta_code_file:Ljava/lang/String;

.field private static ta_code_prop:Ljava/lang/String;

.field private static version_text1:Ljava/lang/String;

.field private static version_text2:Ljava/lang/String;

.field private static version_text3:Ljava/lang/String;


# instance fields
.field private certificationImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, ""

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->hwID:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->slot:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->version_text1:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->version_text2:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->version_text3:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->ta_code_file:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->ta_code_prop:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 332
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 334
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 338
    :cond_0
    goto :goto_0

    .line 336
    :catch_0
    move-exception p1

    .line 337
    const-string p2, "CustCertificationWithVersionSettings"

    const-string v0, "Exception getBitmap"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getElabelVersion1()I
    .locals 4

    .line 197
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "system/etc/elabel/version.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "system/etc/elabel/version.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcust/settings/CustCertificationWithVersionSettings;->version_text1:Ljava/lang/String;

    .line 202
    sget-object v2, Lcust/settings/CustCertificationWithVersionSettings;->version_text1:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 205
    nop

    .line 206
    goto :goto_0

    .line 204
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2

    .line 207
    :cond_0
    sput v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    :goto_0
    goto :goto_1

    .line 209
    :catch_0
    move-exception v1

    .line 210
    const-string v1, "CustCertificationWithVersionSettings"

    const-string v2, "getElabelVersion1 : Exception BufferedReader error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sput v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I

    .line 213
    :goto_1
    sget v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I

    return v0
.end method

.method public static getElabelVersion2()I
    .locals 4

    .line 218
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "elabel/version.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "elabel/version.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcust/settings/CustCertificationWithVersionSettings;->version_text2:Ljava/lang/String;

    .line 223
    sget-object v2, Lcust/settings/CustCertificationWithVersionSettings;->version_text2:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcust/settings/CustCertificationWithVersionSettings;->elabel2_version:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 226
    nop

    .line 227
    goto :goto_0

    .line 225
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2

    .line 228
    :cond_0
    sput v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel2_version:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    :goto_0
    goto :goto_1

    .line 230
    :catch_0
    move-exception v1

    .line 231
    const-string v1, "CustCertificationWithVersionSettings"

    const-string v2, "getElabelVersion2 : Exception BufferedReader error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sput v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel2_version:I

    .line 234
    :goto_1
    sget v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel2_version:I

    return v0
.end method

.method public static getElabelVersion3()I
    .locals 4

    .line 240
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "vendor/elabel/version.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "vendor/elabel/version.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcust/settings/CustCertificationWithVersionSettings;->version_text3:Ljava/lang/String;

    .line 245
    sget-object v2, Lcust/settings/CustCertificationWithVersionSettings;->version_text3:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcust/settings/CustCertificationWithVersionSettings;->elabel3_version:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 248
    nop

    .line 249
    goto :goto_0

    .line 247
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2

    .line 250
    :cond_0
    sput v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel3_version:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    :goto_0
    goto :goto_1

    .line 252
    :catch_0
    move-exception v1

    .line 253
    const-string v1, "CustCertificationWithVersionSettings"

    const-string v2, "getElabelVersion3 : Exception BufferedReader error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sput v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel3_version:I

    .line 256
    :goto_1
    sget v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel3_version:I

    return v0
.end method

.method public static getHardWareIdSlot()Ljava/lang/String;
    .locals 4

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor/elabel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getTaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elabel/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getTaCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "system/etc/elabel/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getTaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 284
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "proc/hwmodel"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcust/settings/CustCertificationWithVersionSettings;->hwID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 289
    nop

    .line 290
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v3, "proc/sim_card_slot"

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcust/settings/CustCertificationWithVersionSettings;->slot:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 295
    nop

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcust/settings/CustCertificationWithVersionSettings;->hwID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcust/settings/CustCertificationWithVersionSettings;->slot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    .line 297
    const-string v0, "CustCertificationWithVersionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHardWareIdSlot : HWID_Slot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    goto :goto_1

    .line 294
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1

    .line 288
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    const-string v0, "CustCertificationWithVersionSettings"

    const-string v1, "getHardWareIdSlot : Exception BufferedReader error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 278
    :cond_1
    :goto_0
    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getTaCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    .line 279
    const-string v0, "CustCertificationWithVersionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaCode : hwID_slot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_1
    sget-object v0, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    return-object v0
.end method

.method public static getTaCode()Ljava/lang/String;
    .locals 3

    .line 262
    const-string v0, "ro.product.model.display"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->ta_code_prop:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcust/settings/CustCertificationWithVersionSettings;->ta_code_prop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->ta_code_file:Ljava/lang/String;

    .line 264
    const-string v0, "CustCertificationWithVersionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaCode : ta_code_file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/CustCertificationWithVersionSettings;->ta_code_file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v0, Lcust/settings/CustCertificationWithVersionSettings;->ta_code_file:Ljava/lang/String;

    return-object v0
.end method

.method public static isCertificationConfig(Landroid/content/Context;)Z
    .locals 1

    .line 307
    nop

    .line 308
    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05001c    # @bool/config_show_cust_certification 'true'

    .line 310
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    .line 312
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCertificationFileAvaiable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 316
    nop

    .line 318
    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    move v0, p0

    :goto_0
    const-string v1, "CustCertificationWithVersionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCertificationFileAvaiable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Avaiable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    nop

    .line 327
    move p0, v0

    goto :goto_1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string v1, "CustCertificationWithVersionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception isCertificationFileAvaiable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    nop

    .line 327
    :goto_1
    return p0
.end method

.method public static showCertification(Landroid/content/Context;)Z
    .locals 7

    .line 148
    invoke-static {p0}, Lcust/settings/CustCertificationWithVersionSettings;->isCertificationConfig(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    :try_start_0
    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getHardWareIdSlot()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getElabelVersion1()I

    move-result v0

    sput v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I

    .line 153
    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getElabelVersion2()I

    move-result v0

    sput v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel2_version:I

    .line 155
    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getElabelVersion3()I

    move-result v0

    sput v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel3_version:I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system/etc/elabel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elabel/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vendor/elabel/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/android/settings/Utils;->getHardWareId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NE1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    const-string v0, "ro.hw.cert_info.path"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-static {p0, v0}, Lcust/settings/CustCertificationWithVersionSettings;->isCertificationFileAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 171
    :cond_0
    const-string p0, "CustCertificationWithVersionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCertification filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    nop

    .line 189
    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcust/settings/CustCertificationWithVersionSettings;->elabel3_version:I

    sget v5, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I

    if-lt v4, v5, :cond_2

    .line 175
    const-string v0, "CustCertificationWithVersionSettings"

    const-string v1, "vendor/elabel/ exists correct image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p0, v3}, Lcust/settings/CustCertificationWithVersionSettings;->isCertificationFileAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 177
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcust/settings/CustCertificationWithVersionSettings;->elabel2_version:I

    sget v3, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I

    if-lt v2, v3, :cond_3

    .line 178
    const-string v0, "CustCertificationWithVersionSettings"

    const-string v2, "elabel/ exists correct image"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p0, v1}, Lcust/settings/CustCertificationWithVersionSettings;->isCertificationFileAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 181
    :cond_3
    const-string v1, "CustCertificationWithVersionSettings"

    const-string v2, "system/etc/elabel/ exists correct image"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {p0, v0}, Lcust/settings/CustCertificationWithVersionSettings;->isCertificationFileAvaiable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 187
    :catch_0
    move-exception p0

    .line 188
    const-string p0, "CustCertificationWithVersionSettings"

    const-string v0, "showCertification : Exception BufferedReader error."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    :goto_0
    const-string p0, "CustCertificationWithVersionSettings"

    const-string v0, "There are no correct images in three paths"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    nop

    .line 73
    const p1, 0x7f0d01ec    # @layout/zzz_certification_settings 'res/layout/zzz_certification_settings.xml'

    invoke-virtual {p0, p1}, Lcust/settings/CustCertificationWithVersionSettings;->setContentView(I)V

    .line 75
    const p1, 0x7f121208    # @string/zzz_certification_settings_title 'Certification'

    invoke-virtual {p0, p1}, Lcust/settings/CustCertificationWithVersionSettings;->setTitle(I)V

    .line 77
    const p1, 0x7f0a00af    # @id/certification_image

    invoke-virtual {p0, p1}, Lcust/settings/CustCertificationWithVersionSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcust/settings/CustCertificationWithVersionSettings;->certificationImage:Landroid/widget/ImageView;

    .line 79
    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getHardWareIdSlot()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getElabelVersion1()I

    move-result p1

    sput p1, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I

    .line 81
    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getElabelVersion2()I

    move-result p1

    sput p1, Lcust/settings/CustCertificationWithVersionSettings;->elabel2_version:I

    .line 83
    invoke-static {}, Lcust/settings/CustCertificationWithVersionSettings;->getElabelVersion3()I

    move-result p1

    sput p1, Lcust/settings/CustCertificationWithVersionSettings;->elabel3_version:I

    .line 86
    invoke-static {}, Lcom/android/settings/Utils;->getHardWareId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NE1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    const-string p1, "ro.hw.cert_info.path"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcust/settings/CustCertificationWithVersionSettings;->certificationImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0, p0, p1}, Lcust/settings/CustCertificationWithVersionSettings;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcust/settings/CustCertificationWithVersionSettings;->certificationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_0
    goto/16 :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcust/settings/CustCertificationWithVersionSettings;->certificationImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    sget p1, Lcust/settings/CustCertificationWithVersionSettings;->elabel3_version:I

    sget v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I

    if-lt p1, v0, :cond_3

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vendor/elabel/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    const-string v0, "CustCertificationWithVersionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elabel3 : 3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    invoke-direct {p0, p0, p1}, Lcust/settings/CustCertificationWithVersionSettings;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    iget-object v0, p0, Lcust/settings/CustCertificationWithVersionSettings;->certificationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    :cond_2
    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcust/settings/CustCertificationWithVersionSettings;->certificationImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    sget p1, Lcust/settings/CustCertificationWithVersionSettings;->elabel2_version:I

    sget v0, Lcust/settings/CustCertificationWithVersionSettings;->elabel1_version:I

    if-lt p1, v0, :cond_5

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "elabel/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    const-string v0, "CustCertificationWithVersionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elabel2 : 2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 109
    invoke-direct {p0, p0, p1}, Lcust/settings/CustCertificationWithVersionSettings;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 110
    if-eqz p1, :cond_4

    .line 111
    iget-object v0, p0, Lcust/settings/CustCertificationWithVersionSettings;->certificationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    :cond_4
    goto :goto_0

    .line 115
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "system/etc/elabel/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcust/settings/CustCertificationWithVersionSettings;->hwID_slot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    const-string v0, "CustCertificationWithVersionSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elabel : 1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 118
    invoke-direct {p0, p0, p1}, Lcust/settings/CustCertificationWithVersionSettings;->getBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 119
    if-eqz p1, :cond_6

    .line 120
    iget-object v0, p0, Lcust/settings/CustCertificationWithVersionSettings;->certificationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcust/settings/CustCertificationWithVersionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 131
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x102002c    # @android:id/home

    if-eq p1, v1, :cond_0

    .line 144
    return v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcust/settings/CustCertificationWithVersionSettings;->finish()V

    .line 141
    return v0
.end method
