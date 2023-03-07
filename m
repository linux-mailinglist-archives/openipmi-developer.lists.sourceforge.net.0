Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B50C36AFA34
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Mar 2023 00:22:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pZgd4-0006FJ-TU;
	Tue, 07 Mar 2023 23:21:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=0430120c81=steve.wahl@hpe.com>)
 id 1pZfm4-0006jo-BO for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Mar 2023 22:27:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LaaPqV7Flc0GLDHQpIpi/BIcyjij0wSdtMhbcCHYsgA=; b=bzpURXYzh14aedk1nlAd207Hx3
 1B1gaQJsqCyVt/duyFbE+mvaKffad26KX79/wr+vfAQhkhFb4zQCNB9w4hdkzh6xNp/MB1i8kM9iV
 7aF6hYMSlabjdQ+3CN3jVgdb/DQoFAjxu+OPdFUZk2UGIXwu3putdq2N4qxqz5HrQX3U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LaaPqV7Flc0GLDHQpIpi/BIcyjij0wSdtMhbcCHYsgA=; b=dBGTtEPvS7206sM/n2pLQEb2LG
 P7U2ipKNX5tGiTNjItSAPxWwuBMxoNSFvBY0DTYDqE03LZiomL6B++byYqBVrK2SoVloGm+fPjiGR
 4BEWxfpOXLicJAysxZzdFuoJXim1PWw8FlgmG/LJXVLIExYn/1+n33i2A3VD3VuPakoc=;
Received: from mx0a-002e3701.pphosted.com ([148.163.147.86])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pZfm1-000AUF-GX for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Mar 2023 22:27:12 +0000
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
 by mx0a-002e3701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 327L5gJ4028321; Tue, 7 Mar 2023 22:24:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pps0720; bh=LaaPqV7Flc0GLDHQpIpi/BIcyjij0wSdtMhbcCHYsgA=;
 b=KucE5UTqJQpxT11mxXz+EBR8v0tavcjUv9Ui2FHab40WoQiuV3yFIDgqKk3q5kcdvuwo
 drWjaXC7Yx+uiwl1OenpwWu47udmJqwKjE9dILefQUZGqLmGaEP1NLYCkNLYgQXE55IH
 pJ+yRhi5GSJ5jKQ8RWB3Nr3EtesnmJ05hdKeHlS8cBLT36zWyHn3FQ9/R6GqQyfwyefx
 YeGHnWIch0H3I5hz2qQ78crYlcNTY741RdGLewUR/aekyotj3MBUgHiSeyPnIKvgWPEK
 jg+AIfQknv6WWMr+5LSHk3ZVcc7cEeQsQPCw1ideabEOY7fb99n90BFJHjYRpVRpYa7A Vw== 
Received: from p1lg14878.it.hpe.com (p1lg14878.it.hpe.com [16.230.97.204])
 by mx0a-002e3701.pphosted.com (PPS) with ESMTPS id 3p6bu8114b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Mar 2023 22:24:17 +0000
Received: from p1lg14886.dc01.its.hpecorp.net (unknown [10.119.18.237])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by p1lg14878.it.hpe.com (Postfix) with ESMTPS id CBB17130A9;
 Tue,  7 Mar 2023 22:24:16 +0000 (UTC)
Received: from swahl-home.5wahls.com (unknown [16.231.227.36])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (Client did not present a certificate)
 by p1lg14886.dc01.its.hpecorp.net (Postfix) with ESMTPS id 9C74F80AD9E;
 Tue,  7 Mar 2023 22:24:12 +0000 (UTC)
Date: Tue, 7 Mar 2023 16:24:10 -0600
From: Steve Wahl <steve.wahl@hpe.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <ZAe5batlkUwlKoxx@swahl-home.5wahls.com>
References: <20230302204612.782387-1-mcgrof@kernel.org>
 <20230302204612.782387-6-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230302204612.782387-6-mcgrof@kernel.org>
X-Proofpoint-GUID: -gScpSVwE5aPWwo4gsaN-rEbeWVyAJK_
X-Proofpoint-ORIG-GUID: -gScpSVwE5aPWwo4gsaN-rEbeWVyAJK_
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-07_16,2023-03-07_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0
 mlxscore=0 malwarescore=0 impostorscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303070197
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 02, 2023 at 12:46:10PM -0800, Luis Chamberlain
 wrote: > Although this driver is a good use case for having a directory >
 that is not other directories and then subdirectories with more > e [...]
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.147.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pZfm1-000AUF-GX
X-Mailman-Approved-At: Tue, 07 Mar 2023 23:21:58 +0000
Subject: Re: [Openipmi-developer] [PATCH 5/7] sgi-xp: simplify sysctl
 registration
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
Cc: j.granados@samsung.com, linux-hyperv@vger.kernel.org, steve.wahl@hpe.com,
 patches@lists.linux.dev, song@kernel.org, kys@microsoft.com,
 jirislaby@kernel.org, wei.liu@kernel.org, sstabellini@kernel.org,
 arnd@arndb.de, linux-scsi@vger.kernel.org, decui@microsoft.com,
 willy@infradead.org, zhangpeng362@huawei.com, xen-devel@lists.xenproject.org,
 yzaikin@google.com, haiyangz@microsoft.com, keescook@chromium.org,
 minyard@acm.org, jejb@linux.ibm.com, apparmor@lists.ubuntu.com,
 linux-raid@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 nixiaoming@huawei.com, jgross@suse.com, martin.petersen@oracle.com,
 sujiaxun@uniontech.com, gregkh@linuxfoundation.org, robinmholt@gmail.com,
 linux-kernel@vger.kernel.org, oleksandr_tyshchenko@epam.com,
 ebiederm@xmission.com, tangmeng@uniontech.com, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 02, 2023 at 12:46:10PM -0800, Luis Chamberlain wrote:
> Although this driver is a good use case for having a directory
> that is not other directories and then subdirectories with more
> entries, the usage of register_sysctl_table() can recurse and
> increases complexity so to avoid that just split out the
> registration to each directory with its own entries.
> 
> register_sysctl_table() is a deprecated compatibility wrapper.
> register_sysctl() can do the directory creation for you so just use
> that.
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>

Reviewed-by: Steve Wahl <steve.wahl@hpe.com>

> ---
>  drivers/misc/sgi-xp/xpc_main.c | 24 ++++++++++--------------
>  1 file changed, 10 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/misc/sgi-xp/xpc_main.c b/drivers/misc/sgi-xp/xpc_main.c
> index b2c3c22fc13c..6da509d692bb 100644
> --- a/drivers/misc/sgi-xp/xpc_main.c
> +++ b/drivers/misc/sgi-xp/xpc_main.c
> @@ -93,7 +93,7 @@ int xpc_disengage_timelimit = XPC_DISENGAGE_DEFAULT_TIMELIMIT;
>  static int xpc_disengage_min_timelimit;	/* = 0 */
>  static int xpc_disengage_max_timelimit = 120;
>  
> -static struct ctl_table xpc_sys_xpc_hb_dir[] = {
> +static struct ctl_table xpc_sys_xpc_hb[] = {
>  	{
>  	 .procname = "hb_interval",
>  	 .data = &xpc_hb_interval,
> @@ -112,11 +112,7 @@ static struct ctl_table xpc_sys_xpc_hb_dir[] = {
>  	 .extra2 = &xpc_hb_check_max_interval},
>  	{}
>  };
> -static struct ctl_table xpc_sys_xpc_dir[] = {
> -	{
> -	 .procname = "hb",
> -	 .mode = 0555,
> -	 .child = xpc_sys_xpc_hb_dir},
> +static struct ctl_table xpc_sys_xpc[] = {
>  	{
>  	 .procname = "disengage_timelimit",
>  	 .data = &xpc_disengage_timelimit,
> @@ -127,14 +123,9 @@ static struct ctl_table xpc_sys_xpc_dir[] = {
>  	 .extra2 = &xpc_disengage_max_timelimit},
>  	{}
>  };
> -static struct ctl_table xpc_sys_dir[] = {
> -	{
> -	 .procname = "xpc",
> -	 .mode = 0555,
> -	 .child = xpc_sys_xpc_dir},
> -	{}
> -};
> +
>  static struct ctl_table_header *xpc_sysctl;
> +static struct ctl_table_header *xpc_sysctl_hb;
>  
>  /* non-zero if any remote partition disengage was timed out */
>  int xpc_disengage_timedout;
> @@ -1041,6 +1032,8 @@ xpc_do_exit(enum xp_retval reason)
>  
>  	if (xpc_sysctl)
>  		unregister_sysctl_table(xpc_sysctl);
> +	if (xpc_sysctl_hb)
> +		unregister_sysctl_table(xpc_sysctl_hb);
>  
>  	xpc_teardown_partitions();
>  
> @@ -1243,7 +1236,8 @@ xpc_init(void)
>  		goto out_1;
>  	}
>  
> -	xpc_sysctl = register_sysctl_table(xpc_sys_dir);
> +	xpc_sysctl = register_sysctl("xpc", xpc_sys_xpc);
> +	xpc_sysctl_hb = register_sysctl("xpc/hb", xpc_sys_xpc_hb);
>  
>  	/*
>  	 * Fill the partition reserved page with the information needed by
> @@ -1308,6 +1302,8 @@ xpc_init(void)
>  	(void)unregister_die_notifier(&xpc_die_notifier);
>  	(void)unregister_reboot_notifier(&xpc_reboot_notifier);
>  out_2:
> +	if (xpc_sysctl_hb)
> +		unregister_sysctl_table(xpc_sysctl_hb);
>  	if (xpc_sysctl)
>  		unregister_sysctl_table(xpc_sysctl);
>  
> -- 
> 2.39.1
> 

-- 
Steve Wahl, Hewlett Packard Enterprise


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
