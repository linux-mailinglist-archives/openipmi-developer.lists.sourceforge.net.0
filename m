Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7DDC5820E
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Nov 2025 16:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lh/HZvCudoZ1pLP6fmytCWxeFwfjwQJk1vb/6HZqRt8=; b=M2Uhc0YKj31aGnUOiH2ZaBFwa/
	fuFRE8oVwh6sQGTPg3epUDUorNefeJZsuOHSRnK3+Rn5H12C9kzcV+lwAjWqY3m3lewmzexlgLfLA
	XXoaxhAG77BD2mbqmxBbAh0eJaEj5iyVn60/nRsL6OIJoFFS+iK5soQMPJdwwgAi33Nk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJYqS-0001fV-Kf;
	Thu, 13 Nov 2025 15:02:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vJYqQ-0001fM-Is for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7gHtfYafoVBa3cIi9rRP74JINnvGEZJW5+dv7cYb3FU=; b=jsHPvuwu03dOU/lXwtXN66Hr8C
 yzcY4s/XY9ESoTxTbqTFx/CbKKKhskGAchbJEzrBRZfY7KIt7KDbEUKJg5xlFUqK/s+YDdKGbct9B
 0Uf8LdSBPm96nBA6oXde1jI/Q1JhYXYqDmDf85cdg2pe5DGJm65x3fCTZMLKcoyjhdZ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7gHtfYafoVBa3cIi9rRP74JINnvGEZJW5+dv7cYb3FU=; b=d8KhHpwELbVPB8FQuRwjx+ypmh
 MCwjMe19CsZQEw6FcVpMFeltrPEBNzGhILuSJGksq7QGp1y2ZpRZ1h+Q7WhnRbLqbiElkQDLP+waV
 Gy2TfpgIPMQH1T4kuGHbqn1JSX42MRKpzvcEgpcF7OpcLto+yOMI2/SQ+1J70RagjggQ=;
Received: from mgamail.intel.com ([192.198.163.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJYqQ-0000Iw-7v for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763046162; x=1794582162;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xXyctpk+av7LWTqLda4jFkpzr1VPV7EOmfIfDNoOySU=;
 b=Xzn4OerBV39h1Ou/YeJF/giqt82ZhLauXEL38FgThSLtRUl9ITm0Ke8Q
 uMVVrrsB8VbUzJjO2eUOOwUa9cugQTXciIBLPsIoHfrjC+UVqdv3LQuez
 G4cHm1EZh1ksNtm+Fxi2xdwxbBuoq5XhL0iB9uqWNRUpryOdFG2JCSbGH
 TvFzMfj2WkzEeT1YEfiTT0vAS9NW+z2p/iLjtcBhWXWqeS28Iwq5pf/Jm
 CXa09kNJCyXxL6pA4D0grKT0uip8wxogi4XgxiQ8jWgsW4k5dBbzYfH8g
 0cLzvKAqXhMZAbIjhS/SL91QgoUbJ8aPZr2fKj2yYZ4827ei76bSxB3Jn Q==;
X-CSE-ConnectionGUID: upPeVS9fTMuC5VoXMST/0g==
X-CSE-MsgGUID: bOjc/t4ERZGRxN3oZSygjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="68991536"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="68991536"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:02:41 -0800
X-CSE-ConnectionGUID: DIfiUnNYR/yZE1Tf+OgUOQ==
X-CSE-MsgGUID: alFPuFbYQTqfXKojQLQ2xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="188810238"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa010.jf.intel.com with ESMTP; 13 Nov 2025 07:02:32 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 19B8C9A; Thu, 13 Nov 2025 16:02:19 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <corey@minyard.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 Calvin Owens <calvin@wbinvd.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Sagi Maimon <maimon.sagi@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Karan Tilak Kumar <kartilak@cisco.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Steven Rostedt <rostedt@goodmis.org>, Petr Mladek <pmladek@suse.com>,
 Viacheslav Dubeyko <Slava.Dubeyko@ibm.com>,
 Max Kellermann <max.kellermann@ionos.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-staging@lists.linux.dev,
 ceph-devel@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Date: Thu, 13 Nov 2025 15:32:18 +0100
Message-ID: <20251113150217.3030010-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
References: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Use %ptSp instead of open coded variants to print content
   of struct timespec64 in human readable format. Reviewed-by: Christian König
    <christian.koenig@amd.com> Acked-by: Sumit Semwal <sumit.semwal@linaro.org>
    Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com> --- drivers/dma-buf/sync_de
    [...] 
 
 Content analysis details:   (-0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vJYqQ-0000Iw-7v
Subject: [Openipmi-developer] [PATCH v3 04/21] dma-buf: Switch to use %ptSp
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Jan Hoeppner <hoeppner@linux.ibm.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Xiubo Li <xiubli@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Ilya Dryomov <idryomov@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, Konrad Dybcio <konradybcio@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Satish Kharat <satishkh@cisco.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Stefan Haberland <sth@linux.ibm.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sean Paul <sean@poorly.run>,
 Rodolfo Giometti <giometti@enneenne.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sesidhar Baddela <sebaddel@cisco.com>, Jessica Zhang <jesszhan0024@gmail.com>,
 Sven Schnelle <svens@linux.ibm.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vladimir Oltean <olteanv@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

VXNlICVwdFNwIGluc3RlYWQgb2Ygb3BlbiBjb2RlZCB2YXJpYW50cyB0byBwcmludCBjb250ZW50
IG9mCnN0cnVjdCB0aW1lc3BlYzY0IGluIGh1bWFuIHJlYWRhYmxlIGZvcm1hdC4KClJldmlld2Vk
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkFja2VkLWJ5
OiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpTaWduZWQtb2ZmLWJ5OiBB
bmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3N5
bmNfZGVidWcuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMKaW5kZXggNjdjZDY5NTUx
ZTQyLi45ZTVkNjYyY2Q0ZTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVn
LmMKKysrIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYwpAQCAtNTksNyArNTksNyBAQCBz
dGF0aWMgdm9pZCBzeW5jX3ByaW50X2ZlbmNlKHN0cnVjdCBzZXFfZmlsZSAqcywKIAkJc3RydWN0
IHRpbWVzcGVjNjQgdHM2NCA9CiAJCQlrdGltZV90b190aW1lc3BlYzY0KGZlbmNlLT50aW1lc3Rh
bXApOwogCi0JCXNlcV9wcmludGYocywgIkAlbGxkLiUwOWxkIiwgKHM2NCl0czY0LnR2X3NlYywg
dHM2NC50dl9uc2VjKTsKKwkJc2VxX3ByaW50ZihzLCAiQCVwdFNwIiwgJnRzNjQpOwogCX0KIAog
CXNlcV9wcmludGYocywgIjogJWxsZCIsIGZlbmNlLT5zZXFubyk7Ci0tIAoyLjUwLjEKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1p
LWRldmVsb3Blcgo=
