.class synthetic Lcom/android/settings/fih/apn/APNSelectionActivity$4;
.super Ljava/lang/Object;
.source "APNSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fih/apn/APNSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$settings$fih$apn$APNSelectionActivity$TabState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 98
    invoke-static {}, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->values()[Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$4;->$SwitchMap$com$android$settings$fih$apn$APNSelectionActivity$TabState:[I

    :try_start_0
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$4;->$SwitchMap$com$android$settings$fih$apn$APNSelectionActivity$TabState:[I

    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->UPDATE:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    invoke-virtual {v1}, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$4;->$SwitchMap$com$android$settings$fih$apn$APNSelectionActivity$TabState:[I

    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->NO_TABS:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    invoke-virtual {v1}, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
