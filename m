Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0793AC4DADB
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 13:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0juUnqI/7ou+oUpIFMPA/cglhcOxbnAvQZSIsb+w5bs=; b=HYR7Of1Zzyje1JdGG7kEpzJeVU
	y/y6fVR59bZad20ArP3Qm9l8Pq9oU1Qrv2yZrymjDjc8aBDWjvVZY8a3Q3DcYjrvt6y8WBHfFpdD2
	IQfcvfxyh8pCnM6bo20FLf14ct2EHo1IvZrOKRZfycVSdtLYizMehkWRXzuYyBsduLwA=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vInTa-0005fb-88;
	Tue, 11 Nov 2025 12:27:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vInTY-0005fU-Rm for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 12:27:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2g7jtiz+WVELg7H1dGKZxbHx9opJwuG4isnZZms6QjU=; b=i9VbNT+5r8bk79uZczXP79pke/
 PMh/aQtDeMIDYDPReUEeGDibNQY72ftgKyuSvNmYNj6B4/4ioFkpZKjslQSciInSl8NgttBuxinJj
 7Za56m4o6Olg7pg9H2WkBYi3HexEc6ckT8NUSaSvoD84KrMtk6IMPA0dWYeEw6J4kzwk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2g7jtiz+WVELg7H1dGKZxbHx9opJwuG4isnZZms6QjU=; b=IitRQvBsC47qW3ojzODnq2G+PM
 G2XR7d9zdgr/FTGbtePfDmPQSb2aaPfyTsNkQ67Wz97BVDW2bpT0m4UecF2rIQysSM/fQxDwE3VyF
 G6WjWpNX437VC2Tw3O4PK8iR1qogUzEQMSemPwhn782jRWzRpLb3/XKLHKi0DoI834sE=;
Received: from mgamail.intel.com ([192.198.163.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vInTZ-00059a-1v for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 12:27:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762864077; x=1794400077;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7NmptH2LCRnhyIJyupG4avq6FRBgd39PfdnreF6zDIE=;
 b=TFi8xe2K/4vktLVMZK2MJHYG49+JNWsc5VVM6HQ0gfdMpmH+EEEY5oCy
 xqpRkJg/P2CQEGVwWGp/mPeNDFvweoS7VUVqgWJSvVjOkTUhk+h8BbCfW
 9N6/LmBfLjmAziz12bnkRPsWVIpXhp/SevXn/J74TfTnjKH6UDba7muT7
 HjocU84B+igep6kTrSc6TXIz8Buv/wdTcco5U8cyOB7wlr/L08uH5TjuA
 bwu2aWiDdTpFA1pORKkl/e4QuS2WyuxyFWIYtRYJhS2xPqNRDxexx2nmf
 ef4Kp2HF8hGsg5vqAuiE3UTdT+6pAbgp8fOkibjerN77r4K5aPSI7IjNQ Q==;
X-CSE-ConnectionGUID: AneWfqbGRHm69gzMUmhfkQ==
X-CSE-MsgGUID: KgFjZHxsSoG3RlmVOOGTPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75606895"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="75606895"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:27:56 -0800
X-CSE-ConnectionGUID: 2mA0XXKwRcyvJwy0xrWdNg==
X-CSE-MsgGUID: XLws0vWwRP+2xdWEpmA1HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="188592907"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa007.fm.intel.com with ESMTP; 11 Nov 2025 04:27:49 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id E57149A; Tue, 11 Nov 2025 13:27:37 +0100 (CET)
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
Date: Tue, 11 Nov 2025 13:20:04 +0100
Message-ID: <20251111122735.880607-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
References: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Use %ptSp instead of open coded variants to print content
   of struct timespec64 in human readable format. Reviewed-by: Christian König
    <christian.koenig@amd.com> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
    --- drivers/dma-buf/sync_debug.c | 2 +- 1 file changed, 1 insertion(+), 1
    de [...] 
 
 Content analysis details:   (-0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vInTZ-00059a-1v
Subject: [Openipmi-developer] [PATCH v2 04/21] dma-buf: Switch to use %ptSp
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
LWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvc3luY19kZWJ1Zy5jIGIvZHJpdmVycy9kbWEtYnVmL3N5bmNfZGVidWcuYwppbmRleCA2
N2NkNjk1NTFlNDIuLjllNWQ2NjJjZDRlOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL3N5
bmNfZGVidWcuYworKysgYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5jCkBAIC01OSw3ICs1
OSw3IEBAIHN0YXRpYyB2b2lkIHN5bmNfcHJpbnRfZmVuY2Uoc3RydWN0IHNlcV9maWxlICpzLAog
CQlzdHJ1Y3QgdGltZXNwZWM2NCB0czY0ID0KIAkJCWt0aW1lX3RvX3RpbWVzcGVjNjQoZmVuY2Ut
PnRpbWVzdGFtcCk7CiAKLQkJc2VxX3ByaW50ZihzLCAiQCVsbGQuJTA5bGQiLCAoczY0KXRzNjQu
dHZfc2VjLCB0czY0LnR2X25zZWMpOworCQlzZXFfcHJpbnRmKHMsICJAJXB0U3AiLCAmdHM2NCk7
CiAJfQogCiAJc2VxX3ByaW50ZihzLCAiOiAlbGxkIiwgZmVuY2UtPnNlcW5vKTsKLS0gCjIuNTAu
MQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVu
aXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
b3BlbmlwbWktZGV2ZWxvcGVyCg==
