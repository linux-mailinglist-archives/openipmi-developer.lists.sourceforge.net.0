Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A777B4DD0
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 10:53:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnEgA-0005s1-G4;
	Mon, 02 Oct 2023 08:53:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1qnEg8-0005rb-S7 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=30qK6pKhju5NwD5B6UH65U+gtXr5QDT67nZk/wXrG5o=; b=lSvtrDDaHWi8lxaVKabnbup2VE
 +A3UvLoELPngX5b+kzMG5/LxS67TsvysPHruP96aaUP9J4PQSJaw7djNQnp38D+4jbXMPahBqPTje
 hpMqDkeS2Nsc/p9LzvTIUOJ8STjHWv80g/mJgWDavNYoVQhGe0Roqvdz3o/MgQLG+Hjs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=30qK6pKhju5NwD5B6UH65U+gtXr5QDT67nZk/wXrG5o=; b=gLcr9KryBuqvBU0dyJGwMZv+RH
 +656p9nf0cMt+Bv4dlesZn+/XGipRItXs8YP+Uq9k2/4ch5yU9liLyrzPd7stR9JC8pBiS67M2p8t
 upXuBK92Yh5qaepB/CDEAooZQlICmJ+PFelm/eIDqBoGmVqK2TU2fUB2eMraaGLv36TE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnEg7-00FPCu-Jv for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8147560C94;
 Mon,  2 Oct 2023 08:53:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 475C9C116D2;
 Mon,  2 Oct 2023 08:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696236795;
 bh=9jkWNrvkT+0LBek9ukFJf+FP4eXJDtJ7tqddCAk457s=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=mHarItBj0kfOKDXhcHyRTyxtdqNbek3gy9DO+yrzNTUJjpLPxU5bKRqHCkdOW17Ie
 xkjq0jUNKFsuFS2t19rNxjW1x3vXKYkakaCdWfIuYHrFXtHrvD/4bfnm6FDLdjwnlo
 5voc1dkLeKWe49cuL/zomKRMH9j951bKZs0iByI9rUHpEQ4xmK+7nJPykI4XyrFMGp
 hBVWTvg03Gy3ikCGWQykcvc5t0tV5Mq6CMkTLxGhqPmcMmS4/zmnuv2Cu263JvWv+R
 BfgcskbdW/nGJdhxW0T1YjF8PrpchaPtHg/O8IdSlvpoENpmGsP0W51gKChlgqBeIv
 qAV34DsE/M6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 29385E784AF;
 Mon,  2 Oct 2023 08:53:15 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Mon, 02 Oct 2023 10:55:23 +0200
MIME-Version: 1.0
Message-Id: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-6-02dd0d46f71e@samsung.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3837;
 i=j.granados@samsung.com; h=from:subject:message-id;
 bh=NSvTJ17Kcfm8DYFJyM6YVk1PHDjvaSDbIrsd2Gse9YE=;
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlGoV9bbHfdufy6tsLcPXDVXR+WNMz7RSAH58f9
 kFGXPJsJcmJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZRqFfQAKCRC6l81St5ZB
 T2bgDACMcQXXhS/ofH4DCGI9Yfly1kT6RdmG9Sur8hjxuooeorZgEl/aCXeisvwUQFj4lOt8Hx0
 +gdjKSn0uN4Y8DF0k6dnFSA+h9NhuFNA65F6Wain093IqXcKXimz7qvzMw2nopuTQ+X+N3zQ0vJ
 absXFp0jssl+QlKi1hDVQz8mDWpkmDNx/bOPRh4QErCHilM/maVTlO5Fq7neDfmeOfloV1U+qLi
 dmmOgFxn9jpx2A+HY0D568WeEcE52zMiP2tSiVYzTXfI69odUkdpXAR5mAiC8wJwCKdEkveF5fD
 iBpWx5t50vj4aiid0chdBpPXmAcdBlYTLYFlwVqccnB7XAefYcefrfLqQyhwfzR7SjZj8yCcjn/
 zKe2EBbcfrFa6tHzwtj6dbrIRnfMMIjpjwrb+QsvwLtgSt9qqv9W/qEZDyl3+79NQu2Squ9v1Bk
 /EewjeRY0ixUgWq2yB2PeOCI975SunWYb3QfV1aFT07wvTzBKt9k6lYWP3VItXPoWT9RE=
X-Developer-Key: i=j.granados@samsung.com; a=openpgp;
 fpr=F1F8E46D30F0F6C4A45FF4465895FAAC338C6E77
X-Endpoint-Received: by B4 Relay for j.granados@samsung.com/default with
 auth_id=70
X-Original-From: Joel Granados <j.granados@samsung.com>
X-Spam-Score: -5.2 (-----)
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
 Content analysis details:   (-5.2 points, 6.0 required)
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
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qnEg7-00FPCu-Jv
Subject: [Openipmi-developer] [PATCH v2 06/15] parport: Remove the now
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

Remove the unneeded ctl_tables that were used to register intermediate
parport directories; only the path is needed at this point. From
parport_device_sysctl_table we removed: devices_root_dir, port_dir,
parport_dir and dev_dir. From parport_default_sysctl_table we removed:
default_dir, parport_dir and dev_dir. Reduce the size by one of the
ctl_table arrays that were not removed

Assign different sizes to the vars array in parport_sysctl_table
depending on CONFIG_PARPORT_1284; this is necessary now that the sysctl
register function uses ARRAY_SIZE to calculate the elements within.
Remove the sentinel element from parport_sysctl_template,
parport_device_sysctl_table and parport_default_sysctl_table.

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 drivers/parport/procfs.c | 28 +++++++++++-----------------
 1 file changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/parport/procfs.c b/drivers/parport/procfs.c
index 4e5b972c3e26..532d5cbbd344 100644
--- a/drivers/parport/procfs.c
+++ b/drivers/parport/procfs.c
@@ -259,8 +259,12 @@ PARPORT_MAX_SPINTIME_VALUE;
 struct parport_sysctl_table {
 	struct ctl_table_header *port_header;
 	struct ctl_table_header *devices_header;
-	struct ctl_table vars[12];
-	struct ctl_table device_dir[2];
+#ifdef CONFIG_PARPORT_1284
+	struct ctl_table vars[10];
+#else
+	struct ctl_table vars[5];
+#endif /* IEEE 1284 support */
+	struct ctl_table device_dir[1];
 };
 
 static const struct parport_sysctl_table parport_sysctl_template = {
@@ -341,7 +345,6 @@ static const struct parport_sysctl_table parport_sysctl_template = {
 			.proc_handler	= do_autoprobe
 		},
 #endif /* IEEE 1284 support */
-		{}
 	},
 	{
 		{
@@ -351,19 +354,14 @@ static const struct parport_sysctl_table parport_sysctl_template = {
 			.mode		= 0444,
 			.proc_handler	= do_active_device
 		},
-		{}
 	},
 };
 
 struct parport_device_sysctl_table
 {
 	struct ctl_table_header *sysctl_header;
-	struct ctl_table vars[2];
-	struct ctl_table device_dir[2];
-	struct ctl_table devices_root_dir[2];
-	struct ctl_table port_dir[2];
-	struct ctl_table parport_dir[2];
-	struct ctl_table dev_dir[2];
+	struct ctl_table vars[1];
+	struct ctl_table device_dir[1];
 };
 
 static const struct parport_device_sysctl_table
@@ -379,7 +377,6 @@ parport_device_sysctl_template = {
 			.extra1		= (void*) &parport_min_timeslice_value,
 			.extra2		= (void*) &parport_max_timeslice_value
 		},
-		{}
 	},
 	{
 		{
@@ -388,17 +385,13 @@ parport_device_sysctl_template = {
 			.maxlen		= 0,
 			.mode		= 0555,
 		},
-		{}
 	}
 };
 
 struct parport_default_sysctl_table
 {
 	struct ctl_table_header *sysctl_header;
-	struct ctl_table vars[3];
-	struct ctl_table default_dir[2];
-	struct ctl_table parport_dir[2];
-	struct ctl_table dev_dir[2];
+	struct ctl_table vars[2];
 };
 
 static struct parport_default_sysctl_table
@@ -423,7 +416,6 @@ parport_default_sysctl_table = {
 			.extra1		= (void*) &parport_min_spintime_value,
 			.extra2		= (void*) &parport_max_spintime_value
 		},
-		{}
 	}
 };
 
@@ -443,7 +435,9 @@ int parport_proc_register(struct parport *port)
 	t->vars[0].data = &port->spintime;
 	for (i = 0; i < 5; i++) {
 		t->vars[i].extra1 = port;
+#ifdef CONFIG_PARPORT_1284
 		t->vars[5 + i].extra2 = &port->probe_info[i];
+#endif /* IEEE 1284 support */
 	}
 
 	port_name_len = strnlen(port->name, PARPORT_NAME_MAX_LEN);

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
