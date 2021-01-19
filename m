Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C6A2FB4FC
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Jan 2021 10:39:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l1nUC-0002lY-2o; Tue, 19 Jan 2021 09:39:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wsa+renesas@sang-engineering.com>)
 id 1l1nUB-0002l0-23
 for openipmi-developer@lists.sourceforge.net; Tue, 19 Jan 2021 09:39:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZLxT2U8mlNW+4K/A6xHCAV/UV0+m049uDGvmvnSpfPs=; b=Zth1IFVlcM/StlncOlilDlErtB
 rTCWLCa4D1TWVYD/NEiFry5zjsfgNhODIt2ltfRrtleOdsn5vUwzxyp9ptEkgPO4oPf8mA/XFHjFc
 RV0nWaYcvZ2X7ehpjNoitL0WtbuFsUmATd5mZ9kcsq5EI9ib8OZuAnLQiYV1N8ofwi24=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZLxT2U8mlNW+4K/A6xHCAV/UV0+m049uDGvmvnSpfPs=; b=C
 0YbyF1yDWggU2HgemXpS6rRgIImDCG2F8L8s76tPzv+h9k8J36qrbMofpSxgaV8VGoQr0vgdDWjzK
 goTB0/uLTPMY0BWVQ6unGmq6t8M2PxrM0/rnZtDWwHHITt1KblQfrbs9V2u3LhFMcC4yxUiMLfuVN
 Cocb4z+SRFnDLqMc=;
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1nU2-00EPF7-1r
 for openipmi-developer@lists.sourceforge.net; Tue, 19 Jan 2021 09:39:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=k1; bh=rKwj1AfOLCGXOesf4eVBjnn2gVf
 wi0SlaspsyM9LG+I=; b=oee3ecn0uienirp2jDwWU+e7Y5MuiH5+fUUSnG1B98l
 uag0O9R6618Ou5swlFlhnVVLeDxqpJh6tpiUnJaYetAWPBy0nSexXtazuqWvjN/E
 +DQfSEaiuBH9Tipikok+JclDS0eyMAV15EO+WUdH0oF5tm4Fsxt19iRrnxTMU148
 =
Received: (qmail 1003424 invoked from network); 19 Jan 2021 10:39:19 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 19 Jan 2021 10:39:19 +0100
X-UD-Smtp-Session: l3s3148p1@dCTXnD257NkgAwDPXyX1ACWcscxtZ2TX
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Date: Tue, 19 Jan 2021 10:39:07 +0100
Message-Id: <20210119093912.1838-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.117.254.33 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [194.117.254.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1l1nU2-00EPF7-1r
Subject: [Openipmi-developer] [PATCH 0/3] treewide: remove open coded SMBus
 block transfers
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
Cc: linux-renesas-soc@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The bigger picture is that I want to extend the maximum block length for
SMBus block transfers from 32 (SMBus2) to 255 (SMBus3). That needs some
cleanups and refactoring first. To make that easier, it would be helpful
if all in-kernel users would call the helper functions of the I2C core
for SMBus block transfers and not open code it via the generic
smbus_xfer.

This series converts the three users doing that. I don't have the
hardware, so these patches are only build tested. Please let me know
what you think.

Changes since RFC:
* addressed review comments, see individual patches

Wolfram Sang (3):
  media: i2c: adv7842: remove open coded version of SMBus block write
  media: i2c: adv7511: remove open coded version of SMBus block read
  ipmi: remove open coded version of SMBus block write

 drivers/char/ipmi/ipmb_dev_int.c | 24 +++++++++----------
 drivers/media/i2c/adv7511-v4l2.c | 41 ++++++++++++--------------------
 drivers/media/i2c/adv7842.c      | 24 ++++---------------
 3 files changed, 32 insertions(+), 57 deletions(-)

-- 
2.29.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
