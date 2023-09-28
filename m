Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6487B2207
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Sep 2023 18:18:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qltiM-0006e3-J2;
	Thu, 28 Sep 2023 16:18:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1qlqwf-0001D9-W8 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 13:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XieL6bDcpakXHoxmFbg2va0g6Tj1oNpV7OG+mKKLrWw=; b=NnGgWjjYyh4+WQ7acetSaWn6tE
 +9oJR4bO/sSi2+sqgH6yovF+/nPBYrQzp7330v4prmwVMBKKsnFyzdbDavKTiOktFA1KFMcxNMO2u
 SUZtehLzZZaq/s7FnCBWExF5QTfGSidAJ4tGzK+OPyoQcbRNytLuXrNdobURmGsBKyLU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XieL6bDcpakXHoxmFbg2va0g6Tj1oNpV7OG+mKKLrWw=; b=b1GmM8uRIUaqGQCBTnM2diI/bI
 YQAk5HoUwOAm3z27PQdDmONGKy2JtZ1TVeskg1SiKLK2a9ePLDYTwNuckIxwsP5WBdAPPRwf+5gJw
 rA64s4XZOJStxCF/ZbWOyze9g/qi25gd7iA8+cTfP6wJZw/o5IK7IekDb/iIMJLcHL4U=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qlqwd-0001pv-Fe for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 13:20:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id F387061C65;
 Thu, 28 Sep 2023 13:20:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6660CC433B7;
 Thu, 28 Sep 2023 13:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695907236;
 bh=ZiddoNak8xngG9OnuptxMqfnw66bfyd+crUdRoxUWRA=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=IrDBFkuyzY+Ng43NW5CObULZ9zN56OlT2VEqKv18Oi62hn3Ba5jUPt4I3qx7DMfR1
 iClMR/LIIt1XnQIgRltkMB4+LOIgkWSMhbR7CfhlbmnT/BGZJ2XtaXsEqgbb4xAB9t
 TLYb061KJ4KoRTWSS5MdST92LOdBUCeEPjdspHnf4NGzu12f02uAb4Od6TC0OmAJnR
 apSlxI9QTcGfdI3/lmQLCxo2rhbrFnSX7O7oFKg7FYUEXajtv64x6flcQ1V9ClpYZ+
 nMbok3TzNwDG13BzdjvdLXGRqHIcBceyOjXpyc+4iU8lSgkD6RYUMjqAPbw3wacXHs
 b0mvTk0cg0M3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 49DE6E732D3;
 Thu, 28 Sep 2023 13:20:36 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Thu, 28 Sep 2023 15:21:28 +0200
MIME-Version: 1.0
Message-Id: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-3-e59120fca9f9@samsung.com>
References: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-0-e59120fca9f9@samsung.com>
In-Reply-To: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-0-e59120fca9f9@samsung.com>
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
 bh=ui4IGPfTdbR4IGIAbOL4shdoo/J3irZZsIZz3gQ0drk=; 
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlFX3cGe6+E9/0a9eLNoVmJv9uNx1R1TMQIFknp
 t06QGx9crqJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZRV93AAKCRC6l81St5ZB
 T0iCC/4lxYvMPNd56KR9syOhBIjjjL9lOce4FFI9vFCYQ+mZ2iaIno0bBSEmQkEZmez5m10au1S
 g0f8xmfOlU8VaBYmXZwS9WI6d/n6JlMrXlR3plY5Ibf6gPNZgkl8UA4+7SpV6EGGvTeGa4UAkzB
 EXlfYtJNdHkEif74xQjVuQ90sFI3vTWw/qigOxjd4mGmsYhbplpB5NwvVmzV7W0LkH7B6avJXm3
 +HQUyIr5z88PAoFr6xYA+jke9C0E8GfGNyC5xL2BQhlJODuT4otaVMK/c4JGh/LwqHcRCmmBGwY
 9lvf2bY9kysK3mP9qJMxP28IUTW7zlX6v4+ORKyLTUdUSB897zeP+PEecTC8Mq42dUyclAgoUNg
 fLUIUT/Y/nXQcKkPBp8UIZ8Drd829GBO1HjbRjyyO4x2eFGLDe0i3eQPuSUZcYO97lbzOgGicJ8
 XxdRUuA5sTcFBxzCjoIW+6HYKoJz9dRGmUI0TjgcgKEdCLlpYLezYmjA2W+fGyqkVcKT4=
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qlqwd-0001pv-Fe
X-Mailman-Approved-At: Thu, 28 Sep 2023 16:18:08 +0000
Subject: [Openipmi-developer] [PATCH 03/15] xen: Remove now superfluous
 sentinel element from ctl_table array
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

Remove sentinel from balloon_table

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 drivers/xen/balloon.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/xen/balloon.c b/drivers/xen/balloon.c
index 586a1673459e..091eb2931ac4 100644
--- a/drivers/xen/balloon.c
+++ b/drivers/xen/balloon.c
@@ -93,8 +93,7 @@ static struct ctl_table balloon_table[] = {
 		.proc_handler	= proc_dointvec_minmax,
 		.extra1         = SYSCTL_ZERO,
 		.extra2         = SYSCTL_ONE,
-	},
-	{ }
+	}
 };
 
 #else

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
