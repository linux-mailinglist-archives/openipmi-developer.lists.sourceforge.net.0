Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C90E59BE4E
	for <lists+openipmi-developer@lfdr.de>; Sat, 24 Aug 2019 16:52:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i1XOz-0007qx-QB; Sat, 24 Aug 2019 14:52:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1i1XOx-0007qJ-4p
 for openipmi-developer@lists.sourceforge.net; Sat, 24 Aug 2019 14:52:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nqFrskOYKqh+upYdC438izxEDmWPqvC8isHQd+5nCFI=; b=N4Q8Ni5meMyms7j0BWuqE+OJ7T
 1yPHLqBz+LCrVzddCghtUue2JEAWyLC86IVMimdAjcGFpLj+nQ61pqlj97rMUXQXBjPY2Oxll9gX1
 hR2DjauKJKzqjEiDaGO5dUtHtT4eb6HHYsbHmgxlHZr2OrCDDGK17Sgi4uUKGaN9pIA0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nqFrskOYKqh+upYdC438izxEDmWPqvC8isHQd+5nCFI=; b=l
 jSFu7NBnYf2rjWmOaY2blAZXLpHOMwild5/mOzOkNTln8EuKRglAe25ROiFp1bWaWCt7WKpNB8N2A
 7DxnOe/5JgTorbfBSsQBCWJderv14EVCKNPE5O3OfQOGLHhSsVcEb6BpqsSMigMqVNol7z4dCz3An
 wJ1JNd7mzECWIaRQ=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i1XOu-00DwDO-9j
 for openipmi-developer@lists.sourceforge.net; Sat, 24 Aug 2019 14:52:23 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7OEn2DL153324;
 Sat, 24 Aug 2019 14:51:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=nqFrskOYKqh+upYdC438izxEDmWPqvC8isHQd+5nCFI=;
 b=CuzZeVUG6acjf5PE58kgmrCYrs3opCzmdSnVeYUDULNX+fHEi8CO3p+bKmOndVKRRxiB
 se71B9a2+oTlrzODaY33gCNy9oHzmb57NjiFjMBXY2z/A7jMnZEpdxJpTfa1MDYFBWsj
 /JETkQ74sR/idtmdQ2yAk05bK9sjfwOB9OAyZW521Rm+aCsVhvQ18IASqoL0GnuFlQz6
 bIHn5eXMf4zWSwaJ7DTN2ivz4BO2YsXdXOGiAk4Bhw4yxASh6kTf8cbMHW02aoGB+SmI
 FOP6xkMV17ARNiTismA/HC9j3IcwY2mWX75pXpVk3wjsPdbWAsCkB6n3hxh2se3Ya8cw EA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2ujw6ysarv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 24 Aug 2019 14:51:58 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7OElss1164640;
 Sat, 24 Aug 2019 14:51:58 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2ujw7823df-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 24 Aug 2019 14:51:57 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x7OEpskQ026708;
 Sat, 24 Aug 2019 14:51:54 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 24 Aug 2019 07:51:53 -0700
Date: Sat, 24 Aug 2019 17:51:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Corey Minyard <minyard@acm.org>, Kamlakant Patel <kamlakantp@marvell.com>
Message-ID: <20190824145147.GB5337@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9359
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908240163
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9359
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908240163
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i1XOu-00DwDO-9j
Subject: [Openipmi-developer] [PATCH] ipmi_ssif: Fix locking on probe error
 path
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

If the allocations failed then we returned with the lock held.  This
patch moves the allocations infront of the locking.

Fixes: 714acbc6cc39 ("ipmi_ssif: avoid registering duplicate ssif interface")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 205726926bd3..9cf2efd33f19 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1683,7 +1683,6 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 	u8		  slave_addr = 0;
 	struct ssif_addr_info *addr_info = NULL;
 
-	mutex_lock(&ssif_infos_mutex);
 	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
 	if (!resp)
 		return -ENOMEM;
@@ -1694,6 +1693,8 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 		return -ENOMEM;
 	}
 
+	mutex_lock(&ssif_infos_mutex);
+
 	if (!check_acpi(ssif_info, &client->dev)) {
 		addr_info = ssif_info_find(client->addr, client->adapter->name,
 					   true);
-- 
2.20.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
