Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E5CC58229
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Nov 2025 16:02:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NdIpu+7CmiH3fu06VmiICcv0MNBDSvId8p9XHpZwhT4=; b=RoVkg0SH/cR+MYtHsV/9L7sWEh
	gVuN74CHdwhach0nN4x0dNYi/5zs1QzOpctGUxwYz313X37XnLWM8KfSnv2QuZqNsA6bkfD/3SzWs
	33ggTKZZgV/TQaENtdhe9at1A9kD6wPAcGzzv8LZK0xymOZ8vEokgY/60Wcjbv3tnyO0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vJYqa-0001G3-TS;
	Thu, 13 Nov 2025 15:02:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1vJYqZ-0001Fv-V5 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hneNONZd1HvZhi/JfKicAY2T4nF3G+uaKTakyKDxHDM=; b=IwkvXc1jUJO1bvBVZX9bAaLtAE
 BreVOFNK6UM8I5Q+yR0yarpgrsNMqTmQYHMg3hg5fBg5nnjq57D+6+Pw15e1H7P71AV4tKwTmYLFF
 TBQcuX+2WuhI/RkmR4522Mec0FUcscSFgEr9j7qcJaWdUnl/tUPSdBzIfE5bExUJo9HM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hneNONZd1HvZhi/JfKicAY2T4nF3G+uaKTakyKDxHDM=; b=N
 habqQUuhhmiWuiVeOZF//7ocE685a6TGoGRavB6AyXv3I1HqoqC0/hu1BCVJdUWkIrnXACnXn86rg
 KVDu2GrA9lisBHm9ETOSVGG0YHrdAqHJqcjFiWZLxjXXz8RaXGCQMnr8vovAQ6/A64HMW4uWj9v1/
 4QlhXB+qHSqvgsxQ=;
Received: from mgamail.intel.com ([198.175.65.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vJYqZ-0000Jf-W6 for openipmi-developer@lists.sourceforge.net;
 Thu, 13 Nov 2025 15:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763046172; x=1794582172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vx0/Sdb0miwmSnREMEy30Z2f25MQbxHWNPqxk4mpfZk=;
 b=PPfb1mhlhr8UWdUE5cTfYXNIIQTGKlE/CkSkQj3rU6x0yJAdrqnJLnLM
 56aFtkWzPavHwPh0i8AdPQQyhMMS9/YQmeuL0MP9gT67jCDF+dr841GOW
 eL24tgXCBIJsm3Z1rJdqlgT9J+EUg/pUz8nkUtjvs2BQg/h9OpkI7zxJ3
 EEeMZnHxd7JfTRGjjK+q6CU0wCcL1IDa6XQHMU9glt/xKAc7InaPAARpA
 6G1zdwFLBiFvrNdRnhDW8vXtQp7/2B/A5+7Vvkx011Ls3ua1Nw1CcrGVH
 xm1K+7gHk6LSlVIDV+v3IYIfjHohVgRAk3MGdTX4AexU3rExl/YwV6j/3 w==;
X-CSE-ConnectionGUID: TwZEioCUQLmeZ1/qkFmcMw==
X-CSE-MsgGUID: 1IQMBE3MS6ucq2FiuYQgPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65054028"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65054028"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:02:41 -0800
X-CSE-ConnectionGUID: LWhFLovNRgWDoJiNm0HUow==
X-CSE-MsgGUID: nE6QdQs7Rjq7/OOgIgzs2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="220324615"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa001.fm.intel.com with ESMTP; 13 Nov 2025 07:02:20 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
 id 008C496; Thu, 13 Nov 2025 16:02:18 +0100 (CET)
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
Date: Thu, 13 Nov 2025 15:32:14 +0100
Message-ID: <20251113150217.3030010-1-andriy.shevchenko@linux.intel.com>
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vJYqZ-0000Jf-W6
Subject: [Openipmi-developer] [PATCH v3 00/21] treewide: Introduce %ptS for
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

Petr, we got like more than a half being Acked, I think if you are okay
with this, the patches that have been tagged can be applied.

Note, not everything was compile-tested. Kunit test has been passed, though.

Changelog v3:
- fixed a compilation issue with fnic (LKP), also satisfied checkpatch
- collected more tags

Petr, I have not renamed 'p' to 'n' due to much of rework and
noise introduction for the changes that has been reviewed.
However, I addressed the documentation issues.

v2: <20251111122735.880607-1-andriy.shevchenko@linux.intel.com>

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
  scsi: fnic: Switch to use %ptSp
  scsi: snic: Switch to use %ptSp
  tracing: Switch to use %ptSp

 Documentation/core-api/printk-formats.rst     | 11 +++-
 drivers/char/ipmi/ipmi_si_intf.c              |  3 +-
 drivers/char/ipmi/ipmi_ssif.c                 |  6 +--
 drivers/dma-buf/sync_debug.c                  |  2 +-
 .../gpu/drm/amd/amdgpu/amdgpu_dev_coredump.c  |  3 +-
 drivers/gpu/drm/drm_vblank.c                  |  6 +--
 .../gpu/drm/msm/disp/msm_disp_snapshot_util.c |  3 +-
 drivers/gpu/drm/msm/msm_gpu.c                 |  3 +-
 drivers/gpu/drm/xe/xe_devcoredump.c           |  4 +-
 drivers/mmc/core/mmc_test.c                   | 20 +++----
 drivers/net/dsa/sja1105/sja1105_tas.c         |  8 ++-
 drivers/net/ethernet/intel/e1000e/ptp.c       |  7 +--
 drivers/net/ethernet/intel/igb/igb_ptp.c      |  7 +--
 drivers/pci/endpoint/functions/pci-epf-test.c |  5 +-
 drivers/pps/generators/pps_gen_parport.c      |  3 +-
 drivers/pps/kapi.c                            |  3 +-
 drivers/ptp/ptp_ocp.c                         | 13 ++---
 drivers/s390/block/dasd.c                     |  3 +-
 drivers/scsi/fnic/fnic_trace.c                | 52 ++++++++-----------
 drivers/scsi/snic/snic_debugfs.c              | 10 ++--
 drivers/scsi/snic/snic_trc.c                  |  5 +-
 drivers/staging/media/av7110/av7110.c         |  2 +-
 fs/ceph/dir.c                                 |  5 +-
 fs/ceph/inode.c                               | 49 ++++++-----------
 fs/ceph/xattr.c                               |  6 +--
 kernel/trace/trace_output.c                   |  6 +--
 lib/tests/printf_kunit.c                      |  4 ++
 lib/vsprintf.c                                | 28 +++++++++-
 net/ceph/messenger_v2.c                       |  6 +--
 29 files changed, 130 insertions(+), 153 deletions(-)

-- 
2.50.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
