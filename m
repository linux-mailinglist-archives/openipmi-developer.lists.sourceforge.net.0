Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9C27B220E
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Sep 2023 18:18:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qltiN-0006eh-Gv;
	Thu, 28 Sep 2023 16:18:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1qlqwf-00027c-Ms for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 13:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CyLY0sGxnJeBbaF0Qs7Cg+yAM1bQ6D1IL50t5T6aOtQ=; b=CLwGrBEsU7KEcbD7/Q6GbgttGo
 sBCjIMXsIUCwjFyOF2c+nkA9esPMv4MIFBSzWCNu8PPkHt4C74lIqYpZpbEJAVBrywDRe0XngUhxr
 GEnvarYeaC294QSxfhXwQkAYVgdAXWzzgcOWq+JdBU8yX911dXe4/Lo7ZhaYWxxIk4fI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CyLY0sGxnJeBbaF0Qs7Cg+yAM1bQ6D1IL50t5T6aOtQ=; b=F5+vzTx5sqSBq97+hoUgfDQfdd
 sotmcpuqNAG1km8PdPG7GyHVi1cbMszFc2jUuWpMYYI3cVS1Gs6/OnQbySlOEpDj6iJ8C+e18eb3c
 ww0MwauIjU0JWWSI+W/nLio6a1cZf6x1Jrq7id+4fgRsVGHnh4iYQb5t37N0TEx2DETQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qlqwe-00A204-UL for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 13:20:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A9B2D61CB8;
 Thu, 28 Sep 2023 13:20:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3C10C32779;
 Thu, 28 Sep 2023 13:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695907237;
 bh=5zO7s9Lwosi7QmmL2WLVnIc8u/uJoPITOshfrd6dPWg=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=OZuf7hMNQH/6jfPbtQZPCoyl72bn87/HT1LPJ3FoDxaF5e08+Voy29HA90DNmKOoG
 K8KTyPsT29Q26moP3JUFagj7TAexacVLiF290EeK6+rY62iPg6ZyRTx4ilgv7E7E8F
 DvR4G7zQgEsTokMkNy6lVyh3stCdclTnVH5Vp3bKDcYTPfCdpzizojbvyyoPPS5pjd
 Mq7h9q+sOBnZ7vG+kASbLG/sVqWDBGgHfd0LO7kF40frLpwZuwHCNu4vrFnpG85OVQ
 lokojtHlhEBwQcvtiHV40wjfGBbAImHeFyFCmXQ0lP4q6HD2l3RILeABD1jxtaSzcZ
 GfMvBEvqEdDYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id DD06BE732CF;
 Thu, 28 Sep 2023 13:20:36 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Thu, 28 Sep 2023 15:21:34 +0200
MIME-Version: 1.0
Message-Id: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-9-e59120fca9f9@samsung.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1462;
 i=j.granados@samsung.com; h=from:subject:message-id;
 bh=tCD6uUjpENwGRI1wSieFMxVn0HaUdToj9oadXuH2mRs=;
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlFX3e649I8iEgCQ+8jvmfVnSbEH+5cM+/uGjHp
 +7sMjQufCiJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZRV93gAKCRC6l81St5ZB
 TwJnC/0dPQEskd6EkB4tfpnbwc2TgKq0dfoj8tKncz1G9fyLn3o0DNocpaZy1J4AYL6xD9M4XOC
 kb8puBCX15k3E5sE5lbIupq0uxghhIz2QY6VgfmuomBSGqMVmc8v3gckB2sJCJ0z5cPwmGU9LLM
 wq7K6pONMby24XwTPGt/fPbLT0WQ6y5WkunD9VwmNnFA7zmxQCtUqfY644ugivFOBW5pgclR9hM
 C5jdw8MqjkddlipW10caCiPkzcMV+kSoo3qs3wHncPTT7vISH2e6tkmI2Xy75z1budS54vtamLX
 QwV6V1xjrMUdchaAvkfWGb/tMSrwmBFOgQuQ0mmvFwoQ26xpdGB0iMIQEopG12V2aUFxEI1/vaJ
 8Q6aXtkcH9hwbAp8iR1LbVAzPoCeivNtsvq9A8ogh/og192Qwas7QVtFgbNNcPKSovvljsGIJ6c
 iM6sGTzKbWd6JxxlKEyGZw2u6ept3Ng28GdM6XTYEcyB8nWkVSiKcpqhOpbwekS5ZZmaI=
X-Developer-Key: i=j.granados@samsung.com; a=openpgp;
 fpr=F1F8E46D30F0F6C4A45FF4465895FAAC338C6E77
X-Endpoint-Received: by B4 Relay for j.granados@samsung.com/default with
 auth_id=70
X-Original-From: Joel Granados <j.granados@samsung.com>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qlqwe-00A204-UL
X-Mailman-Approved-At: Thu, 28 Sep 2023 16:18:08 +0000
Subject: [Openipmi-developer] [PATCH 09/15] char-misc: Remove the now
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

Remove sentinel from impi_table and random_table

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 drivers/char/ipmi/ipmi_poweroff.c | 3 +--
 drivers/char/random.c             | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_poweroff.c b/drivers/char/ipmi/ipmi_poweroff.c
index 870659d91db2..b65ab51bf9fa 100644
--- a/drivers/char/ipmi/ipmi_poweroff.c
+++ b/drivers/char/ipmi/ipmi_poweroff.c
@@ -655,8 +655,7 @@ static struct ctl_table ipmi_table[] = {
 	  .data		= &poweroff_powercycle,
 	  .maxlen	= sizeof(poweroff_powercycle),
 	  .mode		= 0644,
-	  .proc_handler	= proc_dointvec },
-	{ }
+	  .proc_handler	= proc_dointvec }
 };
 
 static struct ctl_table_header *ipmi_table_header;
diff --git a/drivers/char/random.c b/drivers/char/random.c
index 3cb37760dfec..4040715cba19 100644
--- a/drivers/char/random.c
+++ b/drivers/char/random.c
@@ -1682,8 +1682,7 @@ static struct ctl_table random_table[] = {
 		.procname	= "uuid",
 		.mode		= 0444,
 		.proc_handler	= proc_do_uuid,
-	},
-	{ }
+	}
 };
 
 /*

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
