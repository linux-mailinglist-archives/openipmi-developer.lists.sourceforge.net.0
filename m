Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 05670C4DAD9
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 13:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Wzd+az3BgHrEbswZRrKr6QBde/zBXxqvKkaO7k67lRc=; b=e2LMg4gK5m0Gl5YTZUOTRgHA22
	KYxjYApT/2K5nsz/Oe0a4fxHBqQH5mguCXspwjMjWSHnbsUBGXEm79h583jnT3xksbHtLppusjyYl
	6DXPf2Wam5lzTAGp63DuoKrncL+CSD53tgyJdHzAMHYwKpL+roeZcERnNvA2kLZhxyX8=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vInTb-0006Jj-Dt;
	Tue, 11 Nov 2025 12:27:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vInTa-0006Ja-Ew for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 12:27:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IxgNK7cpKzhk04ZUdWlPPhqPh9nRnmjF/U1FYbaQYhI=; b=lQ698KEXOvPw9kWWVZRtMENCZw
 SSEEVBu5n7aT+ReF7j+IV1dFTLXJs+usYaExTANvbcuI6mTbwsghFFuiCW3dCuqqg9LCkEYtO+s3g
 q83fQF6YLN7euNjea02QOrFz1hj422OQuK9+bJOTNFKvfX1GFb0QWXEhacgDFU0UMIoU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IxgNK7cpKzhk04ZUdWlPPhqPh9nRnmjF/U1FYbaQYhI=; b=K
 DDuNBmKSeKZMBfP5OyjCpWazP+ZURPkdfOEOE0keoL8VqDrhiFpBege6qWay60VnBlPt4OTlg+TWf
 Vf3Ph03X6Ql6+nPho7PcZ2JlMLlxb6dNUOPxB2Q+RiYZMXLm2uO5NOqqC7JFNsKKYiDWUl6R67Txn
 mzV4suKi8nNHwMmk=;
Received: from mgamail.intel.com ([192.198.163.8])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vInTZ-00059m-Ql for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 12:27:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762864077; x=1794400077;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3ufDyGpQ90Lh9cbA3wPj1PEHCfZCVgCTqOeDqCrieZA=;
 b=iK1C1ISUqBqKdRm08mTOuIXs/algZgZ4SfzV4ccyN8u+PAPNM+/1+Jbm
 jCv1LVQc0Y4gizRVSi5NIhX9tLlxzpWDCKA5eiqc1xPOxt74/Kw+b5+t7
 Kb7uNEKPEGoNJyVy46VJEAC2h0TpawPO0FlFo1qVeWEvevyNKR2B0UnO0
 O6CqvDqbQyDynFdcNHwTV+xuFEWpsvvYjYD4vy8Or+qTxX4RMwqJuRMt9
 L8H6p9F914KvfLJFVJuUONwFAuN3K64uEGtxpv7if4IIniCBv2PaimzR2
 aHnWL1+Y+traNqF8wdFTVGlpVscjVfLgD9LjfpszZ6q0QWSSE8lvmcd3O Q==;
X-CSE-ConnectionGUID: Womt69rEQ1ym6u+K2Ot4iw==
X-CSE-MsgGUID: zkwlDYMNTt2Kj12vreV7Qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82552888"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="82552888"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:27:46 -0800
X-CSE-ConnectionGUID: ZOKULRMJT7KTHajVhJ7ajg==
X-CSE-MsgGUID: kkEFDbWaR6a5b9oyBE8QYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="212343281"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa002.fm.intel.com with ESMTP; 11 Nov 2025 04:27:39 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id CC71996; Tue, 11 Nov 2025 13:27:37 +0100 (CET)
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
Date: Tue, 11 Nov 2025 13:20:00 +0100
Message-ID: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Here is the third part of the unification time printing in
 the kernel. This time for struct timespec64. The first patch brings a support
 into printf() implementation (test cases and documentation upda [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vInTZ-00059m-Ql
Subject: [Openipmi-developer] [PATCH v2 00/21] treewide: Introduce %ptS for
 struct timespec64 and convert users
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Here is the third part of the unification time printing in the kernel.
This time for struct timespec64. The first patch brings a support
into printf() implementation (test cases and documentation update
included) followed by the treewide conversion of the current users.

The idea is to have one or a few biggest users included, the rest
can be taken next release cycle on the subsystem basis, but I won't
object if the respective maintainers already give their tags. Depending
on the tags received it may go via dedicated subsystem or via PRINTK
tree. Petr, what do you think?

Note, not everything was compile-tested. Kunit test has been passed, though.

Changelog v2:
- dropped wrong patches (Hans, Takashi)
- fixed most of the checkpatch warnings (fdo CI, media CI)
- collected tags

v1: <20251110184727.666591-1-andriy.shevchenko@linux.intel.com>

Andy Shevchenko (21):
  lib/vsprintf: Add specifier for printing struct timespec64
  ceph: Switch to use %ptSp
  libceph: Switch to use %ptSp
  dma-buf: Switch to use %ptSp
  drm/amdgpu: Switch to use %ptSp
  drm/msm: Switch to use %ptSp
  drm/vblank: Switch to use %ptSp
  drm/xe: Switch to use %ptSp
  e1000e: Switch to use %ptSp
  igb: Switch to use %ptSp
  ipmi: Switch to use %ptSp
  media: av7110: Switch to use %ptSp
  mmc: mmc_test: Switch to use %ptSp
  net: dsa: sja1105: Switch to use %ptSp
  PCI: epf-test: Switch to use %ptSp
  pps: Switch to use %ptSp
  ptp: ocp: Switch to use %ptSp
  s390/dasd: Switch to use %ptSp
  scsi: fnic: Switch to use %ptS
  scsi: snic: Switch to use %ptSp
  tracing: Switch to use %ptSp

 Documentation/core-api/printk-formats.rst     | 11 ++++-
 drivers/char/ipmi/ipmi_si_intf.c              |  3 +-
 drivers/char/ipmi/ipmi_ssif.c                 |  6 +--
 drivers/dma-buf/sync_debug.c                  |  2 +-
 .../gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c  |  3 +-
 drivers/gpu/drm/drm_vblank.c                  |  6 +--
 .../gpu/drm/msm/disp/msm_disp_snapshot_util.c |  3 +-
 drivers/gpu/drm/msm/msm_gpu.c                 |  3 +-
 drivers/gpu/drm/xe/xe_devcoredump.c           |  4 +-
 drivers/mmc/core/mmc_test.c                   | 20 +++-----
 drivers/net/dsa/sja1105/sja1105_tas.c         |  8 ++-
 drivers/net/ethernet/intel/e1000e/ptp.c       |  7 +--
 drivers/net/ethernet/intel/igb/igb_ptp.c      |  7 +--
 drivers/pci/endpoint/functions/pci-epf-test.c |  5 +-
 drivers/pps/generators/pps_gen_parport.c      |  3 +-
 drivers/pps/kapi.c                            |  3 +-
 drivers/ptp/ptp_ocp.c                         | 13 ++---
 drivers/s390/block/dasd.c                     |  3 +-
 drivers/scsi/fnic/fnic_trace.c                | 46 ++++++++---------
 drivers/scsi/snic/snic_debugfs.c              | 10 ++--
 drivers/scsi/snic/snic_trc.c                  |  5 +-
 drivers/staging/media/av7110/av7110.c         |  2 +-
 fs/ceph/dir.c                                 |  5 +-
 fs/ceph/inode.c                               | 49 ++++++-------------
 fs/ceph/xattr.c                               |  6 +--
 kernel/trace/trace_output.c                   |  6 +--
 lib/tests/printf_kunit.c                      |  4 ++
 lib/vsprintf.c                                | 25 ++++++++++
 net/ceph/messenger_v2.c                       |  6 +--
 29 files changed, 126 insertions(+), 148 deletions(-)

-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
