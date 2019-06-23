Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 631B84FDBB
	for <lists+openipmi-developer@lfdr.de>; Sun, 23 Jun 2019 20:51:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hf7aH-0007NZ-Q6; Sun, 23 Jun 2019 18:51:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lkp@intel.com>) id 1hf7aG-0007NR-Io
 for openipmi-developer@lists.sourceforge.net; Sun, 23 Jun 2019 18:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QLmLjw03CiX6DXkpU47VFtBKVaF10nNi8oD3y9Rcdl4=; b=YJuo/lntMifhwLgukWHiJZt3nZ
 opxgnbnY2F9hUXfuMffPeyyUZ0UrLBjOmjjqJfcX7Ow5jkqmN+SUDosTDZ/Vbd3taWWoznmeQqWi9
 H1qQiKPJJorhpLcGFwh79pTCU1IgkEQNS5KnjS1f+5HR+5Gar1VkJEc12cg6FHUVeok4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QLmLjw03CiX6DXkpU47VFtBKVaF10nNi8oD3y9Rcdl4=; b=IxZOSniY3bMslPS+jkQGhMcE2q
 R+QpnaYOxE8QhIyFDm809KbRYWfDafQIzywNj7Yb9vtc40KkHUfppRIVWXAGlv5R6PsyzBeqS00zZ
 V2dwVqRoeu9hobNWUdmEp4Q1+9c4j8GfGrwLf3Dyn1TXcw6bvJuQoivW3yB87A/4PyD4=;
Received: from mga07.intel.com ([134.134.136.100])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hf7aJ-00BAeX-B1
 for openipmi-developer@lists.sourceforge.net; Sun, 23 Jun 2019 18:51:29 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jun 2019 11:50:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,409,1557212400"; d="scan'208";a="169272519"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jun 2019 11:50:54 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hf7Zm-00078d-2X; Mon, 24 Jun 2019 02:50:54 +0800
Date: Mon, 24 Jun 2019 02:50:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Asmaa Mnebhi <Asmaa@mellanox.com>
Message-ID: <20190623185044.GA94834@lkp-kbuild21>
References: <201906240241.S3kwAGar%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201906240241.S3kwAGar%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hf7aJ-00BAeX-B1
Subject: [Openipmi-developer] [PATCH] fix platform_no_drv_owner.cocci
 warnings
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
Cc: Corey Minyard <cminyard@mvista.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 kbuild-all@01.org, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: kbuild test robot <lkp@intel.com>

drivers/char/ipmi/ipmb_dev_int.c:352:3-8: No need to set .owner here. The core will do it.

 Remove .owner field if calls are used which set it automatically

Generated by: scripts/coccinelle/api/platform_no_drv_owner.cocci

Fixes: 51bd6f291583 ("Add support for IPMB driver")
CC: Asmaa Mnebhi <Asmaa@mellanox.com>
Signed-off-by: kbuild test robot <lkp@intel.com>
---

tree:   https://github.com/cminyard/linux-ipmi for-next
head:   21feadd024e747123bc0aaba8d8cbef2b5eda058
commit: 51bd6f291583684f495ea498984dfc22049d7fd2 [5/7] Add support for IPMB driver

 ipmb_dev_int.c |    1 -
 1 file changed, 1 deletion(-)

--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -349,7 +349,6 @@ MODULE_DEVICE_TABLE(acpi, acpi_ipmb_id);
 
 static struct i2c_driver ipmb_driver = {
 	.driver = {
-		.owner = THIS_MODULE,
 		.name = "ipmb-dev",
 		.acpi_match_table = ACPI_PTR(acpi_ipmb_id),
 	},


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
