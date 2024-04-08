Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C85789BEF7
	for <lists+openipmi-developer@lfdr.de>; Mon,  8 Apr 2024 14:29:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rto7S-00015s-5w;
	Mon, 08 Apr 2024 12:29:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <freude@linux.ibm.com>) id 1rtlql-00052c-FQ
 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Apr 2024 10:03:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:References:In-Reply-To:Reply-To:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WGRw+wpQ+8BkQKcdJ/jvqWzRkTuOQNEebcPy5PQD4Kw=; b=GdSxJ8QBCUtJgC82SYFMityM1U
 8wsMHLXdfkeohU1vxV7uuSNwFSedav2KigJP6hc8z753bkrYUoKN2s+XIq+jOyZIrpj98YWZNo0Gy
 165kIOOhZpLp/tYKNlLDfKFXY+IjXjxSbJoqOst7zGg8wQCgvxjCiEsqjpR25BYjlgVs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:References
 :In-Reply-To:Reply-To:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WGRw+wpQ+8BkQKcdJ/jvqWzRkTuOQNEebcPy5PQD4Kw=; b=bWkkb6A+qP7J6k6DyRoaNn5FG/
 Yko0D7YY2Em0tLWgDkgDHJI0MTnZevYmi7ZmMJfwTlVqx8QssFKi/24MN993W+5TQ+dmD8EsP8PiX
 B0O+Zmb3H9BrxzCDC45EfX9pzRq1u7UIH+Bd0LexxyhpbBqiqAkbPRLFRW6nMYraXmqk=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rtlqk-0000Wb-T7 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Apr 2024 10:03:39 +0000
Received: from pps.filterd (m0353727.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 4389vTLC024196; Mon, 8 Apr 2024 10:03:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=date : from : to : cc :
 subject : reply-to : in-reply-to : references : message-id : content-type
 : content-transfer-encoding : mime-version; s=pp1;
 bh=WGRw+wpQ+8BkQKcdJ/jvqWzRkTuOQNEebcPy5PQD4Kw=;
 b=V1m9DY18uGHMz8vh9IxAKCdhy2XzRwg7vXDe5eU16f5nEfVNyFSH2bkwzlSGAU2+MppO
 4KiihhZ6Fk01FJPzdXSR1BLEuGht8lFKOYZkgyQ+XDX6d86NzlDgaIq0J9qJC+jfnfB7
 aEeGTfrHV1qJLbUVw7VwF0wJD3GQGVNebGmuEEwqhBLJ9iqNw/OPA1h1UuFrYBwI63SP
 L8QiPE5Ov/+xNvSEFsQF6+fJ779nZgk/JgjuEZ8d5Yw4SPP9YYyN9phnIKPRv8VXU/FC
 LdWtpshSMMqQ0phdyUamMRN3ZDDlZNvPvkSzaRMK+nFo6z+Im4121GSQHwYWxTP0de2t 7g== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xceda00e7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 08 Apr 2024 10:03:21 +0000
Received: from m0353727.ppops.net (m0353727.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 438A3KAu002830;
 Mon, 8 Apr 2024 10:03:20 GMT
Received: from ppma22.wdc07v.mail.ibm.com
 (5c.69.3da9.ip4.static.sl-reverse.com [169.61.105.92])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3xceda00e4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 08 Apr 2024 10:03:20 +0000
Received: from pps.filterd (ppma22.wdc07v.mail.ibm.com [127.0.0.1])
 by ppma22.wdc07v.mail.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id
 4387uZ0H019096; Mon, 8 Apr 2024 10:03:18 GMT
Received: from smtprelay04.wdc07v.mail.ibm.com ([172.16.1.71])
 by ppma22.wdc07v.mail.ibm.com (PPS) with ESMTPS id 3xbh3yym76-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 08 Apr 2024 10:03:18 +0000
Received: from smtpav02.wdc07v.mail.ibm.com (smtpav02.wdc07v.mail.ibm.com
 [10.39.53.229])
 by smtprelay04.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 438A3FKl53084522
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 8 Apr 2024 10:03:18 GMT
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D2E1D58058;
 Mon,  8 Apr 2024 10:03:15 +0000 (GMT)
Received: from smtpav02.wdc07v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id F35F85806B;
 Mon,  8 Apr 2024 10:03:10 +0000 (GMT)
Received: from ltc.linux.ibm.com (unknown [9.5.196.140])
 by smtpav02.wdc07v.mail.ibm.com (Postfix) with ESMTP;
 Mon,  8 Apr 2024 10:03:10 +0000 (GMT)
Date: Mon, 08 Apr 2024 12:03:10 +0200
To: Allen Pais <apais@linux.microsoft.com>
Mail-Reply-To: freude@linux.ibm.com
In-Reply-To: <20240327160314.9982-8-apais@linux.microsoft.com>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-8-apais@linux.microsoft.com>
Message-ID: <702594ec5852c482f96cfcf84a02cab2@linux.ibm.com>
X-Sender: freude@linux.ibm.com
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: vcJ1PwKFq1RysBO3jh1OFUS_rcqMuAYv
X-Proofpoint-ORIG-GUID: X3ilzQ7TzOIWEyFQfqPrw-z8aSdSkVVd
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-08_08,2024-04-05_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=918
 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 impostorscore=0 clxscore=1011 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2404080077
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2024-03-27 17:03, Allen Pais wrote: > The only generic
 interface to execute asynchronously in the BH context > is > tasklet; however,
 it's marked deprecated and has some design flaws. To > replace [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [148.163.156.1 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rtlqk-0000Wb-T7
X-Mailman-Approved-At: Mon, 08 Apr 2024 12:29:00 +0000
Subject: Re: [Openipmi-developer] [PATCH 7/9] s390: Convert from tasklet to
 BH workqueue
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
From: Harald Freudenberger via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: freude@linux.ibm.com
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com,
 linus.walleij@linaro.org, Frank.Li@nxp.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, HaraldWelte@viatech.com, paul@crapouillou.net,
 linux-tegra@vger.kernel.org, netdev@vger.kernel.org,
 maintainers@bluecherrydvr.com, peter.ujfalusi@gmail.com,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 kys@microsoft.com, robert.jarzmik@free.fr, haijie1@huawei.com,
 linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, wangzhou1@hisilicon.com, jernej.skrabec@gmail.com,
 jh80.chung@samsung.com, zw@zh-kernel.org, wens@csie.org,
 stern@rowland.harvard.edu, linux-arm-msm@vger.kernel.org, orsonzhai@gmail.com,
 pierre@ossman.eu, linux-mips@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
 patrice.chotard@foss.st.com, asahi@lists.linux.dev, brucechang@via.com.tw,
 Holger Dengler <dengler@linux.ibm.com>, keescook@chromium.org, oakad@yahoo.com,
 sven@svenpeter.dev, rjui@broadcom.com, s.hauer@pengutronix.de,
 sean.wang@mediatek.com, linux-actions@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, haojian.zhuang@gmail.com,
 mirq-linux@rere.qmqm.pl, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 baolin.wang@linux.alibaba.com, matthias.bgg@gmail.com,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com,
 sbranden@broadcom.com, logang@deltatee.com, andersson@kernel.org,
 marcan@marcan.st, haiyangz@microsoft.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev,
 vkoul@kernel.org, linux-s390@vger.kernel.org, mhiramat@kernel.org,
 zhang.lyra@gmail.com, tj@kernel.org, manuel.lauss@gmail.com,
 linux-media@vger.kernel.org, shawnguo@kernel.org, afaerber@suse.de,
 daniel@zonque.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 2024-03-27 17:03, Allen Pais wrote:
> The only generic interface to execute asynchronously in the BH context 
> is
> tasklet; however, it's marked deprecated and has some design flaws. To
> replace tasklets, BH workqueue support was recently added. A BH 
> workqueue
> behaves similarly to regular workqueues except that the queued work 
> items
> are executed in the BH context.
> 
> This patch converts drivers/infiniband/* from tasklet to BH workqueue.
> 
> Based on the work done by Tejun Heo <tj@kernel.org>
> Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git 
> for-6.10
> 
> Note: Not tested. Please test/review.
> 
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
> ...
>  drivers/s390/crypto/ap_bus.c           | 24 +++++++-------
>  drivers/s390/crypto/ap_bus.h           |  2 +-
>  drivers/s390/crypto/zcrypt_msgtype50.c |  2 +-
>  drivers/s390/crypto/zcrypt_msgtype6.c  |  4 +--
> ...

Applied and tested the s390 AP bus and zcrypt part of the patch.
Works fine, a sniff test did not show any problems.
Thanks for your work.

Reviewed-by: Harald Freudenberger <freude@linux.ibm.com>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
