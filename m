Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 862B07B220A
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Sep 2023 18:18:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qltiM-0006dj-2R;
	Thu, 28 Sep 2023 16:18:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1qlqwd-0005so-EB for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 13:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cksvXouUAl9MokMZBnX+bul+rESCliP3Rw9OaoAXzVs=; b=IXVCxuFPDJW8CNyisBDWMahPvQ
 bcP7IjCEi7mckrgNjM1f9gNAwc/X4umIG47WQC0DAS1c3y4uYmECX/35ceFeYxsaUCW3hzoBkU6wp
 DgcaxQAIwypQR2vyvFrhptwXAVhaQRQk0MbIGP0E3dzx4pJXQrwfW77EeP1kIuhZi0UY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cksvXouUAl9MokMZBnX+bul+rESCliP3Rw9OaoAXzVs=; b=dpGfTBz1KKNve9X/O0a2KO3iye
 QFVQKIAvL8ScEWHhw9YGU6TP5J8EzE91wb7Mia9Ni8E+uJAoYRDHibwC7aoAW/fh6MlNOHkZK1Dcz
 geDkQmC4cWZMslcIlcVEDgMHyCUp2QCqcH8+V2xmQgeGiiNErwkNv7UuPc0ob/A+CJVk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qlqwd-00A1zm-3D for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 13:20:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 522D461C50;
 Thu, 28 Sep 2023 13:20:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C67AC433CB;
 Thu, 28 Sep 2023 13:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695907236;
 bh=j/2eYg//PJ1GbwZhUAaOz18f7AbRQ4O+NNbYuKt3mq4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=WRmGiG4AsourgR8PePRCUHkmrHTjGa0GLOwLlRslD9y6Gxglwb/sKdeaYMIiM+m2U
 HCEzm7JFG1uUimaSxcCst+jqGOAk+LPd5ofcZjp7Dr/INDF6+dXWJzwECnaIlHFcRw
 LEZBmRJGbn8CUOMTRZ7oRD405kgYVjEhh4TF32uTBtIqzoTuo9rHeIERNGqM3IsJTd
 E3AOMsUDv9ORWkadDdcnKmhR9zz5DqiW7MH0ddnh45htLMFfazKbEwb6eN+rYXmR1r
 qDAClZUoaj39Nqk9YphBEF7rdkqlcU4nn2uOKk0jMqKnWUeeRkM0qbnycd10U9Ld3x
 iYyDOHPWNIO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id 1CF38E732CF;
 Thu, 28 Sep 2023 13:20:36 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Thu, 28 Sep 2023 15:21:26 +0200
MIME-Version: 1.0
Message-Id: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-1-e59120fca9f9@samsung.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=944; i=j.granados@samsung.com; 
 h=from:subject:message-id;
 bh=qSsthXDIpINcD2xITRy2TOv8R22x0qMRyMvqjqljpm0=; 
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlFX3bxBTXVZalX2OxDj+67GtOqe8IxIGJwSLF1
 iLnIskFGxCJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZRV92wAKCRC6l81St5ZB
 T9hZC/wJ7EgDM6vrFYYmNrYQRkQQUSj4jjafOUPMhsZdNSqZu4kVh8xyDtcKgxhctnq+INR87Nr
 dwm3eyWcssi6Zi3rFSiOI9vdZ2zESFY5OJ4dNUGBRAofgcVpLAvu4ZYQeXaCx7XzSIlzsCyd/dg
 +Ym3KCHhaY2KSd0wJE8MuZN8/J6RxSwT1SyXgnBMjieGNWnw/mxbi7RnSHxARqjAMrAacvr1pUr
 vqS9lxYeOv5aKInqTkx7sBu2iXx1/kgQGA7MNqvKgrgooVkICokoKPgcDvDR1nWTDzrnUzKEAa4
 LroyVmn9iYYNuuXhhBl1BVgWeXVdkN7/r1r69wCAZWcVaadyFOoMNLxRsOvwsw6kynVTfbNOo+4
 OxoS60XgqKVygBBx6urNukqqtiEYIzpDpU/QU00wUDSoHwIOyq4geKJEjTui+QORzF2/rfMdAii
 IGAGzQM4oARjvwY26lxvyJdVBd4NtwRMk5g7yxIYVwfBC4G3Y6+/HFF2COHYzGYBEU5es=
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
X-Headers-End: 1qlqwd-00A1zm-3D
X-Mailman-Approved-At: Thu, 28 Sep 2023 16:18:07 +0000
Subject: [Openipmi-developer] [PATCH 01/15] cdrom: Remove now superfluous
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

Remove sentinel element from cdrom_table

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 drivers/cdrom/cdrom.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/cdrom/cdrom.c b/drivers/cdrom/cdrom.c
index cc2839805983..451907ade389 100644
--- a/drivers/cdrom/cdrom.c
+++ b/drivers/cdrom/cdrom.c
@@ -3654,8 +3654,7 @@ static struct ctl_table cdrom_table[] = {
 		.maxlen		= sizeof(int),
 		.mode		= 0644,
 		.proc_handler	= cdrom_sysctl_handler
-	},
-	{ }
+	}
 };
 static struct ctl_table_header *cdrom_sysctl_header;
 

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
