Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDE87B553A
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 16:34:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnK0Z-0005nc-QU;
	Mon, 02 Oct 2023 14:34:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <steve.wahl@hpe.com>) id 1qnK0Y-0005nS-8X
 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 14:34:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:In-Reply-To:Content-Type:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8kcAx3CglGRn94aeo1HK8iAjrJB5McccnOtaRuGBhlE=; b=Qu5Bwvw9l2ImIQh+4LYMY3q0SE
 40nu9hBrN1AyxAgtKY+S5KxQ98gFckH7O44d0Vck7zVaHr0ny65qbP+BlP/GAXasmXOHq9lTAkAn9
 uKuVpwa5t4Jj31av+L8BYsIUoFzcwOExj6jkTS7vHpJRoZap0xjx5GJpgD0+Nm0UHIhg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:In-Reply-To:Content-Type:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8kcAx3CglGRn94aeo1HK8iAjrJB5McccnOtaRuGBhlE=; b=mK+86dtdPI/YJUS9n0YpdCgj9d
 WaLdhwWClrpN4vFD9DMfkpgTiyODUC9pyNFNaH8hJNZIHCWNzOc8V8ToYYyIy5r4vSnazkhiZxsWo
 pnim89cLyDVOwjzMf2PCOIDqA0MxzES0KR2Us/NKrn3zr22g519ZRGlpdmEXVeAN4vr0=;
Received: from mx0a-002e3701.pphosted.com ([148.163.147.86])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnK0U-0000dP-UN for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 14:34:50 +0000
Received: from pps.filterd (m0150242.ppops.net [127.0.0.1])
 by mx0a-002e3701.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 392ENRAq010318; Mon, 2 Oct 2023 14:33:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com;
 h=date : from : to : cc :
 subject : message-id : references : content-type : in-reply-to :
 mime-version; s=pps0720; bh=8kcAx3CglGRn94aeo1HK8iAjrJB5McccnOtaRuGBhlE=;
 b=UDDV9blwhOqG6lS3UsYzzUODsb3/Jv7uk7fyfcblbVHD3X/OLXl4ruM75aG/o029gXU4
 wZf0e0FS+UT7qSUuJhyOAyZlj0F1UOHpXDeBwm3+RPme4yGaLrJ9gQFKalvxH7zeW0Q2
 9Wal0xHDrZAv4zZfk2yPVG5x6KKVR+62Inf2e5CoAJFSvGqa9XRuymOmZ+CVSG7WUZ0j
 MfjwZN1qCeG6CzxC3CgEIgBeZqSkhI/EtLkuSZrJ0vADwcdmTnlSr+XumB84vemz7JXe
 W34mDYx8DuQrTdltPS/YsslQCZKNQYb9m+YSqJL+3jk+uYK+YsSwbmURt2WthssC/6Wq Jw== 
Received: from p1lg14881.it.hpe.com ([16.230.97.202])
 by mx0a-002e3701.pphosted.com (PPS) with ESMTPS id 3tfyk4g34b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Oct 2023 14:33:28 +0000
Received: from p1lg14886.dc01.its.hpecorp.net (unknown [10.119.18.237])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by p1lg14881.it.hpe.com (Postfix) with ESMTPS id 20CF0804DF1;
 Mon,  2 Oct 2023 14:33:14 +0000 (UTC)
Received: from swahl-home.5wahls.com (unknown [16.231.227.39])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (Client did not present a certificate)
 by p1lg14886.dc01.its.hpecorp.net (Postfix) with ESMTPS id 1031080139E;
 Mon,  2 Oct 2023 14:33:05 +0000 (UTC)
Date: Mon, 2 Oct 2023 09:33:04 -0500
From: Steve Wahl <steve.wahl@hpe.com>
To: j.granados@samsung.com
Message-ID: <ZRrUoISghotzEeu/@swahl-home.5wahls.com>
References: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-0-02dd0d46f71e@samsung.com>
 <=?utf-8?q?=3C20231002-jag-sysctl=5Fremove=5Fempty=5Felem=5Fdrive?=>
Content-Disposition: inline
In-Reply-To: <=?utf-8?q?=3C20231002-jag-sysctl=5Fremove=5Fempty=5Felem=5Fdrive?=>
X-Proofpoint-ORIG-GUID: FvQlGBIC2T_f8YdHb4chZeOBKZ5wjbmW
X-Proofpoint-GUID: FvQlGBIC2T_f8YdHb4chZeOBKZ5wjbmW
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-02_09,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0
 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 phishscore=0
 clxscore=1015 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310020109
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 02, 2023 at 10:55:28AM +0200, Joel Granados via
 B4 Relay wrote: > From: Joel Granados <j.granados@samsung.com> > > This commit
 comes at the tail end of a greater effort to remove the > emp [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.147.86 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [148.163.147.86 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qnK0U-0000dP-UN
Subject: Re: [Openipmi-developer] [PATCH v2 11/15] sgi-xp: Remove the now
 superfluous sentinel element from ctl_table array
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Steve Wahl <steve.wahl@hpe.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Clemens Ladisch <clemens@ladisch.de>, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Phillip Potter <phil@philpotter.co.uk>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Jiri Slaby <jirislaby@kernel.org>,
 Russ Weight <russell.h.weight@intel.com>, Wei Liu <wei.liu@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Corey Minyard <minyard@acm.org>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 David Airlie <airlied@gmail.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Dexuan Cui <decui@microsoft.com>, willy@infradead.org,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-serial@vger.kernel.org,
 Doug Gilbert <dgilbert@interlog.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, josh@joshtriplett.org,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-raid@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, xen-devel@lists.xenproject.org,
 openipmi-developer@lists.sourceforge.net, Juergen Gross <jgross@suse.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Theodore Ts'o <tytso@mit.edu>,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Ahern <dsahern@kernel.org>, Robin Holt <robinmholt@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Oct 02, 2023 at 10:55:28AM +0200, Joel Granados via B4 Relay wrote:
> From: Joel Granados <j.granados@samsung.com>
> 
> This commit comes at the tail end of a greater effort to remove the
> empty elements at the end of the ctl_table arrays (sentinels) which
> will reduce the overall build time size of the kernel and run time
> memory bloat by ~64 bytes per sentinel (further information Link :
> https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)
> 
> Remove sentinel from xpc_sys_xpc_hb and xpc_sys_xpc
> 
> Signed-off-by: Joel Granados <j.granados@samsung.com>
> ---
>  drivers/misc/sgi-xp/xpc_main.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/misc/sgi-xp/xpc_main.c b/drivers/misc/sgi-xp/xpc_main.c
> index 6da509d692bb..3186421e82c3 100644
> --- a/drivers/misc/sgi-xp/xpc_main.c
> +++ b/drivers/misc/sgi-xp/xpc_main.c
> @@ -110,7 +110,6 @@ static struct ctl_table xpc_sys_xpc_hb[] = {
>  	 .proc_handler = proc_dointvec_minmax,
>  	 .extra1 = &xpc_hb_check_min_interval,
>  	 .extra2 = &xpc_hb_check_max_interval},
> -	{}
>  };
>  static struct ctl_table xpc_sys_xpc[] = {
>  	{
> @@ -121,7 +120,6 @@ static struct ctl_table xpc_sys_xpc[] = {
>  	 .proc_handler = proc_dointvec_minmax,
>  	 .extra1 = &xpc_disengage_min_timelimit,
>  	 .extra2 = &xpc_disengage_max_timelimit},
> -	{}
>  };
>  
>  static struct ctl_table_header *xpc_sysctl;
> 
> -- 
> 2.30.2
> 

Reviewed-by: Steve Wahl <steve.wahl@hpe.com>

-- 
Steve Wahl, Hewlett Packard Enterprise


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
