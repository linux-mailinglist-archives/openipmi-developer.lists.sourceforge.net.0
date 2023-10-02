Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 656457B4DF8
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 10:53:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnEgN-0001ye-JC;
	Mon, 02 Oct 2023 08:53:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1qnEgG-0001xY-2b for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aoFUDbjJFw1IgT8Xni+DOM3h86J8XpIZKXtgAZ1Whr0=; b=FiA2JPh/lKsQCoBdywyCwOp+/6
 td8ATuWeMXXMNMDksdVv14+r+S2XJgPtNsQBvRezt1wBvOts8zinBTgZ+882PwR21QOOZoYLZ6CtU
 doA6hPsRpT2IAgMBjYyAgUe7F9IRSPFiK8aA94cwXeOMyQQGuaSHfWbbbgG+CJiA4JZs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aoFUDbjJFw1IgT8Xni+DOM3h86J8XpIZKXtgAZ1Whr0=; b=cpo4RJSVmrQEDwItrAd3T25M+2
 q1UwX79oIELRtM2avkzj7RQ+LnHBV2MWTPKAcAnoFKx88sdxNVbMU3TMAv8bO3woJUsI+qFupmnkV
 PiOp8N0ARjgJu2czcsHeKB7n5pNmqVrz2I5osIX3SgT1kZ/QnJDs93YxCon+aMHiP0jM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnEgC-0001bi-Ow for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E359E60D3D;
 Mon,  2 Oct 2023 08:53:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5543C32781;
 Mon,  2 Oct 2023 08:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696236795;
 bh=7IWRTGCcHSZcJzQ9+CQB1q8u0SSRDwfa1ILU59ULK2s=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=oGcOGSdFN01g9tO0zq1jWZxxY5eHTEK6Ieh32g8Zl/2u76GNVZiQplz+70dwM408C
 xjGlLWU9svr3ba5PnteRqLQfz0+/I37zpSxnNv1EoOGbS4xjDcu/B9evHnXvTA8j7v
 d7BQmq6BXC7iZHS906y/XkAV5W/lOuNd4ZfYBZNpclFo6eOLGpnNk7uNvGblazVEHf
 os8uOGrLIInyl8EPMHRpCflKVwdVNnAKpOvp5OB+K6OLgI8MJQzgp/5rAIMjY36OfD
 3H/N/aFfLHnF8zbVNeIF9+kNw12/GhyMqXUJ4Ex2+CIwPcnwWQrSlYs4vgLjPwpQuh
 /R3FAf3MQKt6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id BB085E784AF;
 Mon,  2 Oct 2023 08:53:15 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Mon, 02 Oct 2023 10:55:28 +0200
MIME-Version: 1.0
Message-Id: =?utf-8?q?=3C20231002-jag-sysctl=5Fremove=5Fempty=5Felem=5Fdrive?=
 =?utf-8?q?rs-v2-11-02dd0d46f71e=40samsung=2Ecom=3E?=
References: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-0-02dd0d46f71e@samsung.com>
In-Reply-To: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-0-02dd0d46f71e@samsung.com>
To: Luis Chamberlain <mcgrof@kernel.org>, willy@infradead.org, 
 josh@joshtriplett.org, Kees Cook <keescook@chromium.org>, 
 Phillip Potter <phil@philpotter.co.uk>, 
 Clemens Ladisch <clemens@ladisch.de>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Juergen Gross <jgross@suse.com>, 
 Stefano Stabellini <sstabellini@kernel.org>, 
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, 
 Jiri Slaby <jirislaby@kernel.org>, 
 "James E.J. Bottomley" <jejb@linux.ibm.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Doug Gilbert <dgilbert@interlog.com>, 
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
 Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, 
 Corey Minyard <minyard@acm.org>, Theodore Ts'o <tytso@mit.edu>, 
 "Jason A. Donenfeld" <Jason@zx2c4.com>, David Ahern <dsahern@kernel.org>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Robin Holt <robinmholt@gmail.com>, Steve Wahl <steve.wahl@hpe.com>, 
 Russ Weight <russell.h.weight@intel.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Song Liu <song@kernel.org>, 
 "K. Y. Srinivasan" <kys@microsoft.com>, 
 Haiyang Zhang <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, 
 Dexuan Cui <decui@microsoft.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-Mailer: b4 0.13-dev-86aa5
X-Developer-Signature: v=1; a=openpgp-sha256; l=1256;
 i=j.granados@samsung.com; h=from:subject:message-id;
 bh=ePmiIBkulMk2J0Hn3yd3SHNfMVzMlB72hhtExcVcV3k=;
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlGoV+aKXagxwn9FWH6ZTWvhVjY34ucdd7w4DTR
 2dN5LSnfq+JAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZRqFfgAKCRC6l81St5ZB
 T1upC/0f07DfBkp9sG4MGPmaJMzGlZZGiOnSzrgySbn+KY4QlvVmzeCW1RNh4/SI3qUvFnRH36B
 HBgmh4yFhDu4q+nFYCARsivwe8aPPp1SDmgVepBn+ew8CtGedybiL+3GVk+plFOmzUKyXRqAKon
 nl6r/yKeTppABClVqoKzfvgqLzNdwZ1N0/hKaxCvpE3bXE8C738wQoCchtxfzSD/xxKTcP3goQ9
 RcUh/CLFpuWwPYKkhhje8q2K9Kuag3MAUHMxqTBKjQxCHsRQoM6bMQBD2HAZv/dnO7CIzJlXrG1
 DMp+Kj8HcvmcGue1narnsl/PUBnvXc6MHPZjyHedBOfa4+ZohotYOHCdLnRsB4tbge4IwuYE0Ju
 MRVv3O66uFsRuysv/tf6I/ai86ZsmS9bXTFhF3IKs1z75FxvjZH8a228UoQ5l+88yppXQR7bEK9
 7kXy21jdGYBzOOmBMhIg6MzwCUczClJJAyH8bUbGA9Uew0qK+QE+XeevXulpo/4D6CW2o=
X-Developer-Key: i=j.granados@samsung.com; a=openpgp;
 fpr=F1F8E46D30F0F6C4A45FF4465895FAAC338C6E77
X-Endpoint-Received: by B4 Relay for j.granados@samsung.com/default with
 auth_id=70
X-Original-From: Joel Granados <j.granados@samsung.com>
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Joel Granados <j.granados@samsung.com> This commit
 comes
 at the tail end of a greater effort to remove the empty elements at the end
 of the ctl_table arrays (sentinels) which will reduce the overall build time
 size of the kernel and run ti [...] 
 Content analysis details:   (-4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.2 INVALID_MSGID          Message-Id is not valid, according to RFC 2822
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qnEgC-0001bi-Ow
Subject: [Openipmi-developer] [PATCH v2 11/15] sgi-xp: Remove the now
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
Reply-To: j.granados@samsung.com
Cc: Joel Granados <j.granados@samsung.com>, linux-hyperv@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-raid@vger.kernel.org,
 linux-serial@vger.kernel.org, xen-devel@lists.xenproject.org,
 openipmi-developer@lists.sourceforge.net, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Joel Granados <j.granados@samsung.com>

This commit comes at the tail end of a greater effort to remove the
empty elements at the end of the ctl_table arrays (sentinels) which
will reduce the overall build time size of the kernel and run time
memory bloat by ~64 bytes per sentinel (further information Link :
https://lore.kernel.org/all/ZO5Yx5JFogGi%2FcBo@bombadil.infradead.org/)

Remove sentinel from xpc_sys_xpc_hb and xpc_sys_xpc

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 drivers/misc/sgi-xp/xpc_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/misc/sgi-xp/xpc_main.c b/drivers/misc/sgi-xp/xpc_main.c
index 6da509d692bb..3186421e82c3 100644
--- a/drivers/misc/sgi-xp/xpc_main.c
+++ b/drivers/misc/sgi-xp/xpc_main.c
@@ -110,7 +110,6 @@ static struct ctl_table xpc_sys_xpc_hb[] = {
 	 .proc_handler = proc_dointvec_minmax,
 	 .extra1 = &xpc_hb_check_min_interval,
 	 .extra2 = &xpc_hb_check_max_interval},
-	{}
 };
 static struct ctl_table xpc_sys_xpc[] = {
 	{
@@ -121,7 +120,6 @@ static struct ctl_table xpc_sys_xpc[] = {
 	 .proc_handler = proc_dointvec_minmax,
 	 .extra1 = &xpc_disengage_min_timelimit,
 	 .extra2 = &xpc_disengage_max_timelimit},
-	{}
 };
 
 static struct ctl_table_header *xpc_sysctl;

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
