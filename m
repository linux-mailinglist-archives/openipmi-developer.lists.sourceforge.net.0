Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E1326FFD5
	for <lists+openipmi-developer@lfdr.de>; Fri, 18 Sep 2020 16:29:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kJHNy-00035I-F7; Fri, 18 Sep 2020 14:29:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dan.carpenter@oracle.com>) id 1kJHNv-00034b-OM
 for openipmi-developer@lists.sourceforge.net; Fri, 18 Sep 2020 14:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fEb5Kid1irTc2joYqo9a5JVHMXpytQUPvcPKE8t/MnM=; b=XnMXNmxvMt13Pf/yopZjPEBrhy
 UOPrd8fCbY55DqAMiQZh+I1/PNRW+VznPQnTJmxHg4ETNJr3mAbMop/2Qeg748cN5LxPs8x7F3xjn
 u8pH/8OSI7EH6nE+lecrmFcw5pb2YF1yN+B1yxMR7Ju2BtuKj3rc5tpnABUcnCBOW7UI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fEb5Kid1irTc2joYqo9a5JVHMXpytQUPvcPKE8t/MnM=; b=f
 ykuI+2whhF3dQbrTfuAbg32pcIa8espNi4GVoMyLxgVVumOHHx2TShJRPW8DI1/pj9qn12iDQnpj1
 wdE3KrDMwtdk/bF+eeUF7hYS+qYIZXOpPOvmwoUY6qM998QZchJ3idLfJgXw8QFaVPv1RrtMc2Cs6
 NP3jV+LcXpcNSLqY=;
Received: from userp2120.oracle.com ([156.151.31.85])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJHNn-00EHuF-8J
 for openipmi-developer@lists.sourceforge.net; Fri, 18 Sep 2020 14:29:11 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08IEOSew007518;
 Fri, 18 Sep 2020 14:28:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=fEb5Kid1irTc2joYqo9a5JVHMXpytQUPvcPKE8t/MnM=;
 b=BNqw4zwMMFB1PQEzEAd74kBVu5u8Gym56egxxU7I4b23a4PoLcRmfJRafvy8z9u//Ag1
 qEBxIR68AB9ZZUp7l/y7bST1qGVO2B/P0shpwLtAxZDuSrTzMG0AU3cn5OCv+yywb9JY
 ++mYvI1k6hedsJ0gkis9aUa1QulNROkoYfazPDQihoP8VoEd4l7Dm2G61+uKbn4qQwps
 gnUtzjSwrU3iWqxFe8FK3r6dNQ/QQB1p3NbH4tp86+16O9XuDzvxsrHfMXIXvAcdkHqK
 J0DLoCcUH/l2uTrYqZ43mdQOZZ1KvRToIAtv7PjUyHXY+mZEFxLNLmD80RU5n0/ksiAh Gw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 33j91e15fv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 18 Sep 2020 14:28:19 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08IEQ8Rr165202;
 Fri, 18 Sep 2020 14:28:18 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 33khppskbh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Sep 2020 14:28:18 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08IESB6w029128;
 Fri, 18 Sep 2020 14:28:11 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Sep 2020 14:28:02 +0000
Date: Fri, 18 Sep 2020 17:27:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20200918142756.GB909725@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 phishscore=0 mlxscore=0 adultscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009180117
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9747
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 impostorscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 mlxlogscore=999
 clxscore=1011 adultscore=0 lowpriorityscore=0 spamscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009180117
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -3.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kJHNn-00EHuF-8J
Subject: [Openipmi-developer] [PATCH] ipmi: msghandler: Fix a signedness bug
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
Cc: Xianting Tian <tian.xianting@h3c.com>,
 openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The type for the completion codes should be unsigned char instead of
char.  If it is declared as a normal char then the conditions in
__get_device_id() are impossible because the IPMI_DEVICE_IN_FW_UPDATE_ERR
error codes are higher than 127.

    drivers/char/ipmi/ipmi_msghandler.c:2449 __get_device_id()
    warn: impossible condition '(bmc->cc == 209) => ((-128)-127 == 209)'

Fixes: f8910ffa81b0 ("ipmi:msghandler: retry to get device id on an error")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/char/ipmi/ipmi_msghandler.c | 2 +-
 drivers/char/ipmi/ipmi_si_intf.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
index 555c3b1e4926..8774a3b8ff95 100644
--- a/drivers/char/ipmi/ipmi_msghandler.c
+++ b/drivers/char/ipmi/ipmi_msghandler.c
@@ -319,7 +319,7 @@ struct bmc_device {
 	int                    dyn_guid_set;
 	struct kref	       usecount;
 	struct work_struct     remove_work;
-	char		       cc; /* completion code */
+	unsigned char	       cc; /* completion code */
 };
 #define to_bmc_device(x) container_of((x), struct bmc_device, pdev.dev)
 
diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index 164f85007080..0b3dbc7e39fd 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -1344,7 +1344,7 @@ static int try_get_dev_id(struct smi_info *smi_info)
 			resp + 2, resp_len - 2, &smi_info->device_id);
 	if (rv) {
 		/* record completion code */
-		char cc = *(resp + 2);
+		unsigned char cc = *(resp + 2);
 
 		if ((cc == IPMI_DEVICE_IN_FW_UPDATE_ERR
 		    || cc == IPMI_DEVICE_IN_INIT_ERR
-- 
2.28.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
