Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CD9182234
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 Mar 2020 20:24:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jC6y6-0001d6-EX; Wed, 11 Mar 2020 19:24:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <stuart.w.hayes@gmail.com>) id 1jC6y4-0001cy-Jj
 for openipmi-developer@lists.sourceforge.net; Wed, 11 Mar 2020 19:24:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EgtDJ5AGOKDXunWbPBsVOSUf6Hw/OWPMFhiNAqY+v00=; b=UwLMIQH4a0GFVMrT41gVaYmLNs
 mytwOOZyeyvB4MoyIHjXvqr1sNh0Z3/4y1gzj2zrJeEH7LXdrO+0RlKVwN4XssbOail5fJtb9ceIr
 BQcnxyns5LHJLFxb+R+ubymN13+sZkKuXTObFsPwvKe1fzmeW+pianIgxfOWo1bjMlrE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EgtDJ5AGOKDXunWbPBsVOSUf6Hw/OWPMFhiNAqY+v00=; b=blNI+76AYdAgFayiaLBq8ZMh5K
 rf1eBUinwkNWVYpyy0fGdHT2jETApsoFnfG+qbVZI5pmUkInba5xlrKZhvEmOjsdEkX0r4ShAGhET
 R6F8GBkmggiI9kkZlLBQD8JfhYLDOw3Izcbk00Jtd3HlNpzuEsxO6FpttwK5yMRFtLBI=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jC6y0-004z2S-Km
 for openipmi-developer@lists.sourceforge.net; Wed, 11 Mar 2020 19:24:36 +0000
Received: by mail-oi1-f194.google.com with SMTP id v19so3019281oic.12
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 11 Mar 2020 12:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=EgtDJ5AGOKDXunWbPBsVOSUf6Hw/OWPMFhiNAqY+v00=;
 b=A5dhkBa+oVqJzJKOetZHXfF/4pL5277l5NyrA943q94ED3AUFqa/Pl7cXcFM39E4GN
 JMEo+ltxm/otd5Pqawjrmezlf7umJUKFAMINNwW9H3mNECGqYXmw+r02VdIHMHeu8aOZ
 t8jaPgdPRWqyeqd5vAqOb54YN5LoyDCh2S4h/++R6TeJSAUS0LKIEDumjB/D+lOaYfw3
 ylLEgBkmPZTwwlKbOY4y97vhb1vZxjBi0IOJyQyJSJwO9nw3XIWYG7xuRI/kwGLpxsOq
 UgZec92hqK4r5WJb3Kc7/qya+4C85EsM3CxFNLbcp7IvmjSw+4V2YEdsH5+Ea8Kfq5op
 jpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EgtDJ5AGOKDXunWbPBsVOSUf6Hw/OWPMFhiNAqY+v00=;
 b=X+ZUPMU4plHrF2960Huyb/Mz0lMvzoAz1zE6lNzKFqnd2t0kFe2TChCWTIV71mfLKa
 dUu5DAyVB8apXzLmLIJRnk01zKjd0Ho2WjW1XGje3XSH3v2JZPFrset1aBLX1Q9dDwPy
 rEPVMgACnWy3LNNBvS8poGCPiyNFvFhLfILCMaUQymUdu6O62Ou2CmT2j2ZUKqY4JHzi
 ZO71/wkgn9uu6KReBtdFXWe6ViZhWD5S+Uu1iriFilDO7c6YRIQzxMnBurhQVipHJYoJ
 T+UAX/UeH+xKa8iieQdhIca2luF+eOTRJHbL3VvKoIN1+e9ZtC6nr3yJfLyEzb1zhzjj
 OxuQ==
X-Gm-Message-State: ANhLgQ0bOUK/E87Z85rjZ1I9UBB1aveXq/dL2UflGaw4ZrRu/COaVwUd
 3dCfNapdb9M1tRfo0Ht5AOY=
X-Google-Smtp-Source: ADFU+vvPmjqBMT50Q0JTQb6B+zGZw9TYen2GGUSEg6KJYLP9OLOn2ZB1AzPLtNAWnIE8g78pKO6Uvg==
X-Received: by 2002:aca:1913:: with SMTP id l19mr155754oii.47.1583954666844;
 Wed, 11 Mar 2020 12:24:26 -0700 (PDT)
Received: from localhost.localdomain ([143.166.81.254])
 by smtp.gmail.com with ESMTPSA id y13sm17527060otk.40.2020.03.11.12.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 12:24:25 -0700 (PDT)
From: Stuart Hayes <stuart.w.hayes@gmail.com>
To: Corey Minyard <minyard@acm.org>
Date: Wed, 11 Mar 2020 15:24:09 -0400
Message-Id: <20200311192409.59923-1-stuart.w.hayes@gmail.com>
X-Mailer: git-send-email 2.18.1
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (stuart.w.hayes[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jC6y0-004z2S-Km
Subject: [Openipmi-developer] [PATCH] ipmi_si: Load acpi_ipmi when ACPI IPMI
 interface added
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
Cc: openipmi-developer@lists.sourceforge.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Try to load acpi_ipmi when an ACPI IPMI interface is added, so that the
ACPI IPMI OpRegion is accessible.

Signed-off-by: Stuart Hayes <stuart.w.hayes@gmail.com>
---
 drivers/char/ipmi/ipmi_si_platform.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
index c78127ccbc0d..2fdfebf0ebc8 100644
--- a/drivers/char/ipmi/ipmi_si_platform.c
+++ b/drivers/char/ipmi/ipmi_si_platform.c
@@ -393,6 +393,8 @@ static int acpi_ipmi_probe(struct platform_device *pdev)
 	dev_info(io.dev, "%pR regsize %d spacing %d irq %d\n",
 		 res, io.regsize, io.regspacing, io.irq);
 
+	request_module("acpi_ipmi");
+
 	return ipmi_si_add_smi(&io);
 
 err_free:
-- 
2.18.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
