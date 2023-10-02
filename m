Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D05007B4DE4
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 10:53:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnEgG-0005t5-G7;
	Mon, 02 Oct 2023 08:53:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1qnEg8-0005rf-S7 for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JMLKTJyzwG16ydCH1FUt6K0eA9DuC7/8ecm3818D8Bw=; b=lnmUk4irABLWJAh+Wu6W79rDrU
 xq0yqdwQk02uSIOCl7lyvvQKCxcuBBOMeC9/upyqy9BgYE78uy83VhmtO6Avvd5qw6twQ3VjGV4gO
 g9ZeSsTRnLjaTCVUeZ7i89ogmuGjgjqq9/Zl/Q55uH/br3xBoewpXzF1QAxMFzZ253NY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JMLKTJyzwG16ydCH1FUt6K0eA9DuC7/8ecm3818D8Bw=; b=WyiKG2vYgDbrfP2StPhDI0uTKb
 w71eKVvYPUMqeVufcF6Xzw035kunYT+02Q5kA9RDTN/3XlFF5q8j6SB+5J6B7wKu/FtAnwpl51NWA
 IO/tbKvknAtKocMcVotbSngE9X9/jAkkAS3pzs35smxi6XbujK9RhC8jnyae4mc1Vjk0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnEg7-0001bR-Ti for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9C75C60D27;
 Mon,  2 Oct 2023 08:53:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5A622C116D5;
 Mon,  2 Oct 2023 08:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696236795;
 bh=5j54WanRwAzUcZ2uYs3SS1dM2Tn6iffizk1WPQdUlpY=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=jj1pFlC05T6xlfv4eflK/SImNn2FxuuYJs+KnnWRcS5VNiNPnYg+9hG9hk51XOblh
 7gPQR8KsEBR9FzTkRqdz2vhMJc6JpITY6Ukcfs2cB6e/s05tjHcyYWy/0aWibJvfVF
 cKwgkPXi4KUI6UTLBiKB3egHptN1VxJucZ3URIMJGR8jtBq1ATU4H+3X+333BXR5YD
 ss1AUMhfxgiBbNIshC58cVbcmr+nqWsZC/3otNokI2Tp2wpp6Vtx7QHQS3y4x0KXtE
 AOqv+GzIhjiGBwiHl4DKq804izCB56tHwff5IfyjnR7JXjuDgb/wxRNSbccS2WUjNo
 sl+TGPCl8ux1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 432AFE784B2;
 Mon,  2 Oct 2023 08:53:15 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Mon, 02 Oct 2023 10:55:24 +0200
MIME-Version: 1.0
Message-Id: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-7-02dd0d46f71e@samsung.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=912; i=j.granados@samsung.com; 
 h=from:subject:message-id;
 bh=c34FrDvRsuK3W5VxNHhzTVZ4EpvxmdCHO9VF2TbEJQM=; 
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlGoV9BM0qHj8XlYlHwvsY27mE0p7Q50fHd/x3m
 mamAQ6k40OJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZRqFfQAKCRC6l81St5ZB
 T+ktC/9hHJ3tzmqocKUjOWy67m0gsFX+WmzFOM1VWX4Xx68Thf2Xh9rp1PbKUomC5Wypz4sEz+/
 DH8udTCz1xwKfRQ4neRh4N91gxFjMM/bXB/33iT8dKbD2BSynm/sWAbYjtTG0u+j1G35lBAfKFl
 rTp6Tu6TxNe+RIcwAfU79Wi/FOzIBwNvsUwdviYDrLxFse3xM5Kf3rghGM/5bunNk3qmWvbxV35
 eb1ODj2kUBMjd6w5vWbsrdvRGSXiy/D8wwKkOC6+HzDkRgPxHusILte3pIBAMUilO+rWF3dktI3
 YacFGr8OQvVODccQ2G/hCi3YSkxkDjes1yBh8L/+/D9Zv/lWhU1SnXI+91LCZljVERXOj/qbZKt
 8FlI1sBruSoMxd31onJ4x9loaKtD+75XozhNKZouQsbbJj96fQPnvr3+gwgziNkXiMPElz7Bv7T
 81pALQhara797OJM8h5V1xw7n9CkuNCysxLg967rj79aFG6UaQfdNIA9PKkBSzlcXc+/k=
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
X-Headers-End: 1qnEg7-0001bR-Ti
Subject: [Openipmi-developer] [PATCH v2 07/15] macintosh: Remove the now
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

Remove sentinel from mac_hid_files

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 drivers/macintosh/mac_hid.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/macintosh/mac_hid.c b/drivers/macintosh/mac_hid.c
index d8c4d5664145..1ae3539beff5 100644
--- a/drivers/macintosh/mac_hid.c
+++ b/drivers/macintosh/mac_hid.c
@@ -236,7 +236,6 @@ static struct ctl_table mac_hid_files[] = {
 		.mode		= 0644,
 		.proc_handler	= proc_dointvec,
 	},
-	{ }
 };
 
 static struct ctl_table_header *mac_hid_sysctl_header;

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
