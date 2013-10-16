.class Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;
.super Ljava/lang/Object;
.source "PageBuddyNotiSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageBuddySettingState"
.end annotation


# instance fields
.field private dock_state:I

.field private earphone_state:I

.field private isCpEnable:I

.field private roaming_state:I

.field private spen_state:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0
    .parameter "cp"
    .parameter "spen"
    .parameter "earphone"
    .parameter "dock"
    .parameter "roaming"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I

    .line 74
    iput p2, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->spen_state:I

    .line 75
    iput p3, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->earphone_state:I

    .line 76
    iput p4, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->dock_state:I

    .line 77
    iput p5, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->roaming_state:I

    .line 78
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->isCpEnable:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->spen_state:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->earphone_state:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->dock_state:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/sec/android/pagebuddynotisvc/PageBuddyNotiSvc$PageBuddySettingState;->roaming_state:I

    return v0
.end method
