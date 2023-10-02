Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4772F7B4DF3
	for <lists+openipmi-developer@lfdr.de>; Mon,  2 Oct 2023 10:53:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qnEgM-0001xv-Cq;
	Mon, 02 Oct 2023 08:53:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <devnull+j.granados.samsung.com@kernel.org>)
 id 1qnEgA-0001xF-0O for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PfgiV/o4SFk1AypBD1hu2p6F6O1Ra3PH+XvzeL+hNt0=; b=TS/iO3KNCaJ0E7H9cHj+BPWeMH
 d+ophzZAYyfZq1erUMiiLEGXB/yNym3F6tLPNADVWNoR0w8G6IQVHMNFS6UsZQNLLuIlwQaPe6kEa
 bmooRS2qK6Wh/26tXNYzBjEH8/FRj1vY2bNcV8RS1N9GlEPnbW2A5BkDykWubpsz33NY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PfgiV/o4SFk1AypBD1hu2p6F6O1Ra3PH+XvzeL+hNt0=; b=UA2/4b8P1bdTr7ydvr3OUC7WJ3
 jYuDJ4FzBvMVAKbqqIn5bRAXxgVNbY+uUtkJlrSx1kyMe6d7CVBzZU25Vx43Bb5dWUPlZrEE3u/bb
 Iyi6noHTqvCG36HFF4SieKKXeWY0pcVxzC0xVWU+xnfw3Y23PXb5t5ELzJh8K2M26aiE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qnEg7-0001bB-MQ for openipmi-developer@lists.sourceforge.net;
 Mon, 02 Oct 2023 08:53:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AD2D660C90;
 Mon,  2 Oct 2023 08:53:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3E6DC433C7;
 Mon,  2 Oct 2023 08:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1696236795;
 bh=aJvesTjncjdehvjoOzgicraxwh/rWiTjr7edG2Q6mv4=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
 b=rPJCnXgUng12Mon8WGDiqrOeKzLo4FZckcbZDHD68j4g1fnP9YKcXfgzclJhytoy2
 oOW8aFHbf4p0+lhSyPbWIsBBO7PuynlLP2Y0iKKbgiKWiNQ3+H6AlZTJ4wYgN9dlgk
 Q9wejDVQM4kbaKc2Tv+xLWx4xXubVibEp4GGIDuKpshDB5p9qCUxCCThzTUHnpaxbS
 cc3ZbKgy2+N7QoE8P0vgp9CEl9492viaO2HInM2bUVAhdZQzIB9wL+XJK88DcYfnJj
 ET4RubMDksXAXcizyUzFlBMwTqDl/c56ZDUwN27AbdIuXCczipjwXcox/lVGwHQuQl
 ibKXUsjL97NtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by smtp.lore.kernel.org (Postfix) with ESMTP id D7B6CE784AE;
 Mon,  2 Oct 2023 08:53:14 +0000 (UTC)
From: Joel Granados via B4 Relay <devnull+j.granados.samsung.com@kernel.org>
Date: Mon, 02 Oct 2023 10:55:19 +0200
MIME-Version: 1.0
Message-Id: <20231002-jag-sysctl_remove_empty_elem_drivers-v2-2-02dd0d46f71e@samsung.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=872; i=j.granados@samsung.com; 
 h=from:subject:message-id;
 bh=D4/jh8s1FOZmHUkzA2HIKPxBmTVEhKvdOly6Ejtyi9s=; 
 b=owEB7QES/pANAwAKAbqXzVK3lkFPAcsmYgBlGoV8RaCzxdAOWtuPnRt7Wux7rupM5tB7FtyrW
 q9lIZ9XZ+CJAbMEAAEKAB0WIQSuRwlXJeYxJc7LJ5C6l81St5ZBTwUCZRqFfAAKCRC6l81St5ZB
 Ty/0C/4uqqq0dHDfGdoGvuiIuxvDhp5ZXfs4li1OUAa9vw/kKRAFFw0BHlJ83pzvScsZ12deUPj
 2Edd0uFUigRsFKLXFTi+/uSJEvha9/UaNQhJzk7mT89m0s5xBmtni5vkcDiSCWnMUv/U7+2H8Y3
 OOOQGjWxSMOZV2e2bXOSlpOLLBDTgaTXQrlHrCOx1ytKm4tYvFHLCe9HOwJKwWZq2QN4WG6Byk+
 wy5Kw93OwbxQlqaev/qEHFhZhtyb3JFmwMCUpNCg00dHkOgnVjaiYmJGZsZE6DBCn5DYoevLBAF
 GrueOiTX1qtk2NNIdj7MkIufi7Z0ardeaO9/RrZ5RlBLMoRFDydK79kGi0ANS2wc0/7vZKx/7Wq
 u9TmBsyJfFw7cevn8fkD5kdY6jEIG3mdhoiSB+9triRBP99C9cWvJoxla/GvwN6tcj9mjG3fvsX
 rXq0YzVTqo/8UPLlRfKC0CMM6mVj4hSse2wU+7FAlYPUF1kbaX8QA1SwyLdmfT5IDcfJI=
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qnEg7-0001bB-MQ
Subject: [Openipmi-developer] [PATCH v2 02/15] hpet: Remove now superfluous
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

Remove the last empty element from hpet_table.

Signed-off-by: Joel Granados <j.granados@samsung.com>
---
 drivers/char/hpet.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/char/hpet.c b/drivers/char/hpet.c
index ee71376f174b..f09c79081b01 100644
--- a/drivers/char/hpet.c
+++ b/drivers/char/hpet.c
@@ -728,7 +728,6 @@ static struct ctl_table hpet_table[] = {
 	 .mode = 0644,
 	 .proc_handler = proc_dointvec,
 	 },
-	{}
 };
 
 static struct ctl_table_header *sysctl_header;

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
