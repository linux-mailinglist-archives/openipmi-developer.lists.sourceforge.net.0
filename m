Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E429F24A0EB
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcX-0001Bp-TU; Wed, 19 Aug 2020 13:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.cryptic@gmail.com>)
 id 1k7bJc-0002A1-GQ; Mon, 17 Aug 2020 09:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=48ZUy5TmzQBYUzPrjZvYPJeHWlYkLbZYovshPbclrcg=; b=mQ0aH56NrTGze7Im1MgSWTSq0A
 0D8chCX+tJXSD3zUM9v5KhzeTmjmf8kjAYU7+4h+XuvGjSR6qtxPS7AXJYSOXlAw6B1l+en4Brrm6
 pQLV9o7BuZJr/LUNA4D0ZAwZn871GxcZx26uB64fRKEnPCOYJ5mmFBLlZDGivZAaf+wc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=48ZUy5TmzQBYUzPrjZvYPJeHWlYkLbZYovshPbclrcg=; b=js3DU3qM+R4P/sB9Hdss3o9Chf
 AcracVkdARxCoPqAs3sOyhtETN1RvGK/MlMdSNShLsqwp64WWS9Hx9LjKqlJbG27CWOcZn0cVs1A2
 UVxHEoLApjjw0/BUTfDyXyGcbQ6ZUQnGh+BOpewqvLYA5XvEORERyAVnQLRADjfC6KAY=;
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7bJU-00Gwry-EL; Mon, 17 Aug 2020 09:20:21 +0000
Received: by mail-pj1-f68.google.com with SMTP id mt12so7516537pjb.4;
 Mon, 17 Aug 2020 02:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=48ZUy5TmzQBYUzPrjZvYPJeHWlYkLbZYovshPbclrcg=;
 b=FoufY+wCt538UGODDBNoxdFMHMLuyZNGQ6MHR7pZXvqvIrAnPj8PHB4pQsWp/mWg6o
 KsvcX8Y87zDteEZApNo70LMlrBVZaBliAR2vLGx60Xbo7CohHtYkdt/Mg+u50DG1h36h
 9Fwly9brTQHjZlbl7lAqxgOWAbzrsFhJBcqUC23aSRj/VpiU2JCK2mbui+uqvhxhgmrl
 IvuQewyHW9KqIl6MAWFr6dd8dgP34kntnReO4dunTk9vfs81InEHWHE3302xh+V3TqjN
 5ledaxK7A0foZnhRefzAA6Ra/wxb6d+K7gxqNB1TdKvqBatRR5FaVQrX9ZSt/5m+frdy
 H7BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=48ZUy5TmzQBYUzPrjZvYPJeHWlYkLbZYovshPbclrcg=;
 b=PyzKjmsqu2k3fY6elauLdQpT9LLK1b69drWnSq6IkGOk4uUfWeZM2SGXe47+0SQTFM
 NaDUd7+mS8+xNRFfHlxHxubeHjKHt1VeY20QP//6hQJWwsra+Hv8F/8CzaMXzopAFqrH
 sns9Ye0ujQ39VVRXACjmiLK1NTsxmYSNmBDEcAhv/v0LuZ/pHX45h9TBsgUGnx8n8NXg
 pwDzTCeIKsViGSdX8rStNo8Z5BpbqzMPG+VSxE0D3LteY3IDX/geaV3G+nKT6oAYChmK
 xVWUs/mlFMufFblOwKnzUONuBPFCyD97ioFdb+89VM/qa2Hwds5PwjLh+0+q3OQjSy88
 oIpQ==
X-Gm-Message-State: AOAM532/2+pPiP9Mrrc5J+/GjseP7B+FqREdDNYpUXUleMQp/LjMuTdb
 k65YTgDR46/MHTA9lRJQBdM=
X-Google-Smtp-Source: ABdhPJzGq3wy6E/Dy/SnfM+UdmLXd8ExYtYFE4LwG7DZVH6d40QHdot/zCUw6TFKmzo3uMNttbjBZg==
X-Received: by 2002:a17:902:bd85:: with SMTP id
 q5mr9922465pls.99.1597656014891; 
 Mon, 17 Aug 2020 02:20:14 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:20:14 -0700 (PDT)
From: Allen Pais <allen.cryptic@gmail.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
 3chas3@gmail.com, axboe@kernel.dk, stefanr@s5r6.in-berlin.de,
 airlied@linux.ie, daniel@ffwll.ch, sre@kernel.org,
 James.Bottomley@HansenPartnership.com, kys@microsoft.com, deller@gmx.de,
 dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com,
 ulf.hansson@linaro.org, mporter@kernel.crashing.org, alex.bou9@gmail.com,
 broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com,
 mitch@sfgoth.com, davem@davemloft.net, kuba@kernel.org
Date: Mon, 17 Aug 2020 14:46:11 +0530
Message-Id: <20200817091617.28119-17-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.207.202.98 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.cryptic[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7bJU-00Gwry-EL
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: [Openipmi-developer] [PATCH] net: atm: convert tasklets callbacks
 to use from_tasklet()
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-hyperv@vger.kernel.org, Romain Perier <romain.perier@gmail.com>,
 keescook@chromium.org, linux-parisc@vger.kernel.org,
 linux-ntb@googlegroups.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-atm-general@lists.sourceforge.net,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Allen Pais <allen.lkml@gmail.com>,
 linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

From: Allen Pais <allen.lkml@gmail.com>

Update all the callbacks of all tasklets by using
from_tasklet() and remove .data field.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 net/atm/pppoatm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/atm/pppoatm.c b/net/atm/pppoatm.c
index 579b66da1d95..3803be8470f7 100644
--- a/net/atm/pppoatm.c
+++ b/net/atm/pppoatm.c
@@ -416,7 +416,6 @@ static int pppoatm_assign_vcc(struct atm_vcc *atmvcc, void __user *arg)
 	pvcc->chan.mtu = atmvcc->qos.txtp.max_sdu - PPP_HDRLEN -
 	    (be.encaps == e_vc ? 0 : LLC_LEN);
 	pvcc->wakeup_tasklet = tasklet_proto;
-	pvcc->wakeup_tasklet.data = (unsigned long) &pvcc->chan;
 	err = ppp_register_channel(&pvcc->chan);
 	if (err != 0) {
 		kfree(pvcc);
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
