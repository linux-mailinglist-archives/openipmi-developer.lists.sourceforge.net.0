Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFBF9675C1
	for <lists+openipmi-developer@lfdr.de>; Sun,  1 Sep 2024 11:29:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1skgth-0002pR-9i;
	Sun, 01 Sep 2024 09:29:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wsa+renesas@sang-engineering.com>)
 id 1skgte-0002pK-Nk for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Sep 2024 09:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DNAAyzq/RftJ9D1dVVcs6SxeUfX7OTPrIA5ni+CVLgE=; b=Yor4rnznOCXFpTlsp2p6otJbs7
 VIMXFrj8C+J06NcXrcrvKABbysF9zefclGInd5JZUF4deHDd4HQ3157LO7O926cdyTRS1mKhSSljl
 nv30u1HgGvTlV8870ZSvB8WAyX53H+KiEjPY0QEn3aRfZxlVgHmczTcNXuoS/+uV9pyM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=DNAAyzq/RftJ9D1dVVcs6SxeUfX7OTPrIA5ni+CVLgE=; b=C
 GgKpLi4s4jhczq5tdiVMlozaf9F58r333tYOQ2RJ/kkX67sAHmhAXuSlM+0ul7Wq+uwuuXiRYQ2hJ
 upGql05TaPXaWBOljiw3oOz9Vu9/nIymRh9jQzGAOjlwde6nja7PtDc8nWVz0bjBmDiEPATvyqtri
 9u+LRGcy4dIG6PB4=;
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skgtc-0000Lj-Hr for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Sep 2024 09:29:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 sang-engineering.com; h=from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding; s=k1; bh=DNAAyzq/RftJ9D
 1dVVcs6SxeUfX7OTPrIA5ni+CVLgE=; b=bdXgaXOjC9ZK726EikXV2xiT4WGmne
 h1/4AcBcE3EHLMaWg9fW0AjGi8FBxDGkzRHzA84Kmd3V8jmleeRtoXVNQDoWFkP8
 QVXSRtxZK0OO2RpiW67UujEuEbWzH7VC9huFYv03DqX+KKDdztdP/fgN/ETXVu6Z
 aQXhqzS6vypmCkpS9qg2Tl58wQ8l92l+vavXk9xkjRq4hmH5xeHGD069S+67mr/5
 VX4hF2KOI7UhT+3hiGqhoTL6ZQhvzWge6KRGVFQWs+0/COkJsDzhrFmnglJ3Ttdm
 D4O2QSCNskEJDhlN9Ntr45TTd7+ilEc8yWjmbjD4/zHTnCq1ubrqt1kw==
Received: (qmail 3758735 invoked from network); 1 Sep 2024 11:02:27 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 1 Sep 2024 11:02:27 +0200
X-UD-Smtp-Session: l3s3148p1@XEFaFQshnsxegkeE
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Date: Sun,  1 Sep 2024 11:02:11 +0200
Message-ID: <20240901090211.3797-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: "i2c-adapter" class entries are deprecated since 2009. Switch
 to the proper location. Reported-by: Heiner Kallweit <hkallweit1@gmail.com>
 Closes:
 https://lore.kernel.org/r/80c4a898-5867-4162-ac85-bdf7c7c68746@gmail.com
 Fixes: 259307074bfc ("ipmi: Add SMBus interface driver (SSIF)") Sig [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.117.254.33 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skgtc-0000Lj-Hr
Subject: [Openipmi-developer] [PATCH] ipmi: docs: don't advertise deprecated
 sysfs entries
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
Cc: Corey Minyard <minyard@acm.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>,
 openipmi-developer@lists.sourceforge.net,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

"i2c-adapter" class entries are deprecated since 2009. Switch to the
proper location.

Reported-by: Heiner Kallweit <hkallweit1@gmail.com>
Closes: https://lore.kernel.org/r/80c4a898-5867-4162-ac85-bdf7c7c68746@gmail.com
Fixes: 259307074bfc ("ipmi: Add SMBus interface driver (SSIF)")
Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 Documentation/driver-api/ipmi.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/driver-api/ipmi.rst b/Documentation/driver-api/ipmi.rst
index e224e47b6b09..dfa021eacd63 100644
--- a/Documentation/driver-api/ipmi.rst
+++ b/Documentation/driver-api/ipmi.rst
@@ -540,7 +540,7 @@ at module load time (for a module) with::
 	alerts_broken
 
 The addresses are normal I2C addresses.  The adapter is the string
-name of the adapter, as shown in /sys/class/i2c-adapter/i2c-<n>/name.
+name of the adapter, as shown in /sys/bus/i2c/devices/i2c-<n>/name.
 It is *NOT* i2c-<n> itself.  Also, the comparison is done ignoring
 spaces, so if the name is "This is an I2C chip" you can say
 adapter_name=ThisisanI2cchip.  This is because it's hard to pass in
-- 
2.43.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
