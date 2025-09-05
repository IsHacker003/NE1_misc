.class Lcom/android/settings/applications/RunningState$1;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/RunningState$MergedItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I
    .locals 8

    .line 151
    iget v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    .line 152
    iget v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget v1, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, v1, :cond_0

    return v2

    .line 153
    :cond_0
    iget v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$1;->this$0:Lcom/android/settings/applications/RunningState;

    iget v1, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-ne v0, v1, :cond_1

    return v3

    .line 154
    :cond_1
    iget p1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget p2, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    if-ge p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 156
    :cond_3
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6

    .line 157
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 158
    return v4

    .line 160
    :cond_4
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    nop

    :cond_5
    return v2

    .line 162
    :cond_6
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v0, :cond_7

    return v2

    .line 163
    :cond_7
    iget-object v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v0, :cond_8

    return v3

    .line 166
    :cond_8
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 168
    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 170
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x190

    if-lt v5, v6, :cond_9

    .line 172
    move v5, v3

    goto :goto_1

    .line 170
    :cond_9
    nop

    .line 172
    move v5, v4

    :goto_1
    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v7, v6, :cond_a

    .line 175
    move v6, v3

    goto :goto_2

    .line 172
    :cond_a
    nop

    .line 175
    move v6, v4

    :goto_2
    if-eq v5, v6, :cond_c

    .line 176
    if-eqz v5, :cond_b

    move v2, v3

    nop

    :cond_b
    return v2

    .line 178
    :cond_c
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_d

    .line 180
    move v5, v3

    goto :goto_3

    .line 178
    :cond_d
    nop

    .line 180
    move v5, v4

    :goto_3
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_e

    .line 183
    move v6, v3

    goto :goto_4

    .line 180
    :cond_e
    nop

    .line 183
    move v6, v4

    :goto_4
    if-eq v5, v6, :cond_10

    .line 184
    if-eqz v5, :cond_f

    goto :goto_5

    :cond_f
    move v2, v3

    :goto_5
    return v2

    .line 187
    :cond_10
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-eq v5, v6, :cond_12

    .line 188
    iget p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    iget p2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    if-ge p1, p2, :cond_11

    goto :goto_6

    :cond_11
    move v2, v3

    :goto_6
    return v2

    .line 190
    :cond_12
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-ne v0, v1, :cond_13

    .line 191
    return v4

    .line 193
    :cond_13
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_14

    return v3

    .line 194
    :cond_14
    iget-object v0, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_15

    return v2

    .line 195
    :cond_15
    iget-object p1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 143
    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/RunningState$1;->compare(Lcom/android/settings/applications/RunningState$MergedItem;Lcom/android/settings/applications/RunningState$MergedItem;)I

    move-result p1

    return p1
.end method
