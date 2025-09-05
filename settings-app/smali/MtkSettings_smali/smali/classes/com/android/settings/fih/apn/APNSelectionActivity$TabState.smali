.class final enum Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;
.super Ljava/lang/Enum;
.source "APNSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fih/apn/APNSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

.field public static final enum DO_NOTHING:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

.field public static final enum NO_TABS:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

.field public static final enum UPDATE:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    const-string v1, "NO_TABS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->NO_TABS:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    new-instance v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    const-string v1, "UPDATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->UPDATE:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    new-instance v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    const-string v1, "DO_NOTHING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->DO_NOTHING:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->NO_TABS:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->UPDATE:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->DO_NOTHING:Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->$VALUES:[Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;
    .locals 1

    .line 63
    const-class v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->$VALUES:[Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    invoke-virtual {v0}, [Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fih/apn/APNSelectionActivity$TabState;

    return-object v0
.end method
