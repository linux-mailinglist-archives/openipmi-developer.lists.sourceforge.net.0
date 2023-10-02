Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F547B4DF0
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 10:53:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnEgK-0001xf-Te;
	Mon, 02 Oct 2023 08:53:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1qnEg8-0001x9-Ts for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XiWpIY0cQ2SrseoZNzocGiGDhDXKGZ5EsSy117PikBM=; b=ZAFCvYe2BOf+0FxXjjaxQGOK3+
 DlHmlwQ++jLE+YO6HYG6QZ4sizqYaE+1whAAZ9w7Aj2Db29wf1SfrHGZEakhqNYVoeYXCDU3XGbhl
 SMoMgOQ2Gey0Lc4DYSnwwkTpd0nyyYEhSmQvS70TgQK+MzdkYexNXWHeB+O7BA9AeCRQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XiWpIY0cQ2SrseoZNzocGiGDhDXKGZ5EsSy117PikBM=; b=LTbtb48dfjvISUHx8/oMdNcjfZ
 H9q4FNBi6h4S4HLQzoRZdjZGCyn5ErOos+M5eO0kLO7FUI7yG6C79ZJEonkhUP5Ma4DXcNrWlUyab
 FBiWRFFOgs6j/BXyLGXSj+dLfvFBN379Tp0mIWChFpDUbiAiqVFsKdvPHZCp9OJ0OUtM=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnEg6-00FPCt-RQ for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0761E60A2B;
 Mon,  2 Oct 2023 08:53:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15E89C433B8;
 Mon,  2 Oct 2023 08:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696236795;
 bh=5V+ck7zme+riQyx1xmqb0Z0EeDR6wxHbTqGoKbjtrmQ=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=h9YSxCOBiZI18TS8F7IFLh6Qq5+WpoHRSjCXtJkW74v79cxU+xHBab6ovMTly8LKe
 IDFqi8nG5On9c5mUzM2nMlLg9u/xCra/9Lupu7tXNo+obgVRsiSTMsjN8q8qMhZJwW
 OZMb4LcQIuvVtxOSe5yyZwJwU7XQJTCScPZiAEqAQ6Vkh29H2SZ2WK88rj6FFDCll8
 DP0Rxd0R3nyUifHTS43/yIIYwnebe2P7wSqXDQ/poAMdzJ4NNjLpkUftDL2+5srhXP
 9tiFoq42TchWR1nIGuWKvALBVYUFpStNC/KPFdeVqueWUJZ1tJWqRhEb5xnTl49iW+
 PgMcLW7jUn/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id E6D5AE7849A;
 Mon,  2 Oct 2023 08:53:14 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Mon, 02 Oct 2023 10:55:20 +0200
MIME-Version: 1.0
Message-Id: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-3-02dd0d46f71e@samsung.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=846; i=j.granados@samsung.com; 
 h=from:subject:message-id;
 bh=8Nedf2Lwq/OA3aANfJ6n4h5+UsWWU6lX+VhCPVGEdNQ=; 
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlGoV8XTr6pqPXL2Smxc+bYMHo1/P6P4+Xz5jGM
 LVmxskaoPCJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZRqFfAAKCRC6l81St5ZB
 T9KdC/0drEL8+dTyGyZg/6XaWVheHfUsBsgDQaWMOuKpb0rMHpDrn/Nci5oHt1wDz5sWP1TWjgs
 FKsSDVxdnNBN+9X0ckqjWyGf5rl/Xxm/E9lR6RQB6eV9u8YjlU7L3mSPq3a4ZHmjFF6Pti2XKv+
 Ca4WXU7SAKiu/C8OW/RyYQl32fKwwgcV6kONqEbCrLSbK4LveVwISI+vDPkola1wrfM+muUVDRw
 FRJxuiV6BavJ4pXOXDh7tOjva65fGwnLqIA88sPKLc7utjrUtGNWNGYrMglM8hKWZwcYObt0s7V
 C5U2+0FZ7+qLORCw2Yclx+UcLpl2pPXjwpWJu3ak3VT0hyjEXvIvIx1UYsdwlorQAitkTer2eKf
 HDMMBMPbtS8OxA+Lb35G/9PWV/3LOjSYvqo4AEH+OQHh7/7ej55TZAEbYIlQCnXXLoOatbyUZ6I
 beZVa+UQo/zcDzjjh9tSz1eY8UnBeuglio1DFA0Yfa5pbmOPP8X9qngGhl19spS4f0lqQ=
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
X-Headers-End: 1qnEg6-00FPCt-RQ
Subject: [Openipmi-developer] [PATCH v2 03/15] xen: Remove now superfluous
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
 drivers/xen/balloon.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/xen/balloon.c b/drivers/xen/balloon.c
index 586a1673459e..976c6cdf9ee6 100644
--- a/drivers/xen/balloon.c
+++ b/drivers/xen/balloon.c
@@ -94,7 +94,6 @@ static struct ctl_table balloon_table[] = {
 		.extra1         = SYSCTL_ZERO,
 		.extra2         = SYSCTL_ONE,
 	},
-	{ }
 };
 
 #else

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
