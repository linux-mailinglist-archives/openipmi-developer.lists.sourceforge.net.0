Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C10E77E0397
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 14:14:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qytzq-0001iy-Pe;
	Fri, 03 Nov 2023 13:13:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andrew@codeconstruct.com.au>) id 1qynlg-0007P7-BL
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9uBDHUEXTjz3mCrbNalyoZITY3Ldzz/4xXHCv3UN9mU=; b=eguz08yll4xJoXZGnuOi3496a1
 NN6k0zdhLgzRI7ftIJE1se9nA73ePjPeLpsVRkDrNzfyWbC75QCkfAFE7lJdX8p66pXZGMjNtimX8
 2QwZl/wP6gFfu4wtlsCzZgDSx+cGUY/CdcaFoHHqZijtnRrlL4v59yebHkK+JWXhMEbs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9uBDHUEXTjz3mCrbNalyoZITY3Ldzz/4xXHCv3UN9mU=; b=Q
 n30M2eJLlQGo58A6zBN/zXNtbMoZU/i9GPPHodS6mBeLWqpnnFbwnUf8md/1ni/nMPt77QCTkK1vH
 ZiaqvrrY3MFMQ9Xuq1Uq3TCEu4KsDkWRdtXlAoekjWjy+nUkgmU7zmObczEtlcRj04AfV+lkzQKsg
 TjVq/+0b16YZjmFY=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qynlg-0005Jk-1g for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 06:34:56 +0000
Received: from localhost.localdomain
 (ppp14-2-79-67.adl-apt-pir-bras31.tpg.internode.on.net [14.2.79.67])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id C19172012B;
 Fri,  3 Nov 2023 14:15:32 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1698992133;
 bh=9uBDHUEXTjz3mCrbNalyoZITY3Ldzz/4xXHCv3UN9mU=;
 h=From:To:Cc:Subject:Date;
 b=K3v0iWVmX+gSRJXB26gV0dszp3ioYxD5gBAE+cy0+zwC19GLqz5VDol6j+LnRWD/n
 YlbCEQrNWQN0SuaRaBwed6fHcStypW1bRb1J5pA4+cYL1rNc81JTR/TOdhXKCgV9cH
 JCcmbNitu6A2AfDnryd/i7/T8L+yvIV9cGbS+pZ4huMCvTKQs6bQyEh46wLbkHJfKJ
 LoPky8QxVqefzGZ6H1xvZDjkFphmhWY8lgBQB/EO2QrUj67tLxqv61zXVxebNbbd/+
 3IzR6MAn0UL7VzICnVUuBls2Ad46YaJMPOzd7jeC7kVzBuuyWZhoDPp0Hvdzo/njEH
 SjtXB2PUMmd9Q==
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: minyard@acm.org,
	openipmi-developer@lists.sourceforge.net
Date: Fri,  3 Nov 2023 16:45:12 +1030
Message-Id: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, A cleanup of the KCS subsystem was prompted after some
 concerns raised by Jonathan on Konstantin's series implementing DSP0254[1]
 (the MCTP KCS Transport Binding Specification):
 https://lore.kernel.org/all/20230929120835.0000108e@Huawei.com/
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qynlg-0005Jk-1g
X-Mailman-Approved-At: Fri, 03 Nov 2023 13:13:55 +0000
Subject: [Openipmi-developer] [PATCH 00/10] ipmi: kcs_bmc: Miscellaneous
 cleanups
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
Cc: jk@codeconstruct.com.au, aladyshev22@gmail.com,
 linux-kernel@vger.kernel.org, Jonathan.Cameron@Huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello,

A cleanup of the KCS subsystem was prompted after some concerns raised
by Jonathan on Konstantin's series implementing DSP0254[1] (the MCTP KCS
Transport Binding Specification):

https://lore.kernel.org/all/20230929120835.0000108e@Huawei.com/

[1]: https://www.dmtf.org/sites/default/files/standards/documents/DSP0254_1.0.0.pdf

The MCTP KCS patches are currently at v5:

https://lore.kernel.org/all/20231010122321.823-1-aladyshev22@gmail.com/

A v6 will be necessary to rework them in terms of the cleanup done here.
I've pushed a preview of that work here:

https://github.com/amboar/linux/compare/d2cc82b50335c8fcf83e1d8f396c8f8cf4333ac4...mctp-kcs

In addition to addressing some of the resource lifetime concerns I've
added kerneldoc for the subsystem in anticipation of Konstantin's series
moving the headers to include/linux/.

To get Konstantin's work merged I expect we'll have to either take these
KCS patches through netdev or the MCTP patches through the IPMI tree. We
should figure out which way we want to go, but netdev's not open right
now and so that's not a pressing concern.

Please review!

Thanks,

Andrew

Andrew Jeffery (10):
  ipmi: kcs_bmc: Update module description
  ipmi: kcs_bmc: Include spinlock.h
  ipmi: kcs_bmc: Make kcs_bmc_update_event_mask() static
  ipmi: kcs_bmc: Make remove_device() callback return void
  ipmi: kcs_bmc: Define client actions in terms of kcs_bmc_client
  ipmi: kcs_bmc: Integrate buffers into driver struct
  ipmi: kcs_bmc: Disassociate client from device lifetimes
  ipmi: kcs_bmc: Track clients in core
  ipmi: kcs_bmc: Add module_kcs_bmc_driver()
  ipmi: kcs_bmc: Add subsystem kerneldoc

 drivers/char/ipmi/kcs_bmc.c           | 160 +++++++++++---------
 drivers/char/ipmi/kcs_bmc.h           |  41 +++++
 drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 152 +++++++------------
 drivers/char/ipmi/kcs_bmc_client.h    | 206 +++++++++++++++++++++++---
 drivers/char/ipmi/kcs_bmc_device.h    |  44 +++++-
 drivers/char/ipmi/kcs_bmc_serio.c     |  84 ++++-------
 6 files changed, 448 insertions(+), 239 deletions(-)

-- 
2.39.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
