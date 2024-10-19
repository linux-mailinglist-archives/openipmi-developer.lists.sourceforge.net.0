Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6DD9A4F48
	for <lists+openipmi-developer@lfdr.de>; Sat, 19 Oct 2024 17:41:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1t2BZa-00072C-RA;
	Sat, 19 Oct 2024 15:40:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1t2BZZ-000722-1W
 for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Oct 2024 15:40:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UeYHqkho8rJuBl15lMa0XKA7XOcPhhBBEGYMU/dbg7E=; b=CxAjPSuxjymd40WWFQotNvbZ6s
 SoH1Ll4zWR1XtEiPMDCMsnYTVEVKNXHM33PNplq04ltvl5z7RmKtdjQiBa8zE78AkKwUiAoubP+FL
 gHOw4Kjh6/2g+e278yVZLeHN7lpfAYvzFnSwNk51azaQoWj21n35e0s3x3bwFRUsZdco=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UeYHqkho8rJuBl15lMa0XKA7XOcPhhBBEGYMU/dbg7E=; b=crcakpohnq4Wt689UevNBj2hgu
 tBZVRYsr3zR5uugd8NRDr0tWYWhgOnxBRsbszmDMRoISHhFFMjqdQ8onA82O8eFrIt8cRFhEItYMi
 NEcBRPxJelY1Pi4FXeRZdm1bgsLyBw4GIvU3P9NNxWH0IdJkgwJSYqmXvYk141ivMqqU=;
Received: from mail-pg1-f179.google.com ([209.85.215.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t2BZX-0002q5-RW for openipmi-developer@lists.sourceforge.net;
 Sat, 19 Oct 2024 15:40:56 +0000
Received: by mail-pg1-f179.google.com with SMTP id
 41be03b00d2f7-7e9fd82f1a5so2146777a12.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 19 Oct 2024 08:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729352450; x=1729957250; darn=lists.sourceforge.net;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=UeYHqkho8rJuBl15lMa0XKA7XOcPhhBBEGYMU/dbg7E=;
 b=QLGOBcsLc0NvakndX3V/vNlPCcYvEEhwWlw39cMF8psIWAewpeXppRzyOYYJBSMQmz
 KLs8vzvlAMP6NXIFlyUuoCDFSg6h+WeLqkOdQmcwLmCuMo3p0YEZKPM0oh4f44sCRfMU
 cRwx6Q6FPE6q6n5AhdGFJpHUj6/dzNjXNwJwZLC3uBZ0t2hLKVHOP4qfHYZTZh+azWzW
 +KnG4ubSW2v84g6uM5kgSfq32mZ5AbzvsssAUVqZjuzdXFDoIABfW6OCbHsdtkIKHBUp
 6siwzLQff13vhfizW8tOoGi2up2fc6EHzyVKch4bnMe5wQCTKTmaCl5G36yCPJyLwZJE
 kykA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729352450; x=1729957250;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UeYHqkho8rJuBl15lMa0XKA7XOcPhhBBEGYMU/dbg7E=;
 b=AFbRgP5x5rLgtTgg64P3xHr+ux6F+0O+NftVP05TuwAXuuNMe/kkBQr93YBJQ2WYxM
 CVC9ujlF8EmkIWdczEMBKsMD6JwpaeSK8Af954hp7PWi0hncdGO9MoOq6YD6IFfTBn3P
 MEWLgvE2bdk5Xw6oI/hR2FIvqHLp/ADPSIqkTpNMu6Nfj4VipIupeIO4uuahPvnCWGpm
 tJSiMCucWe6CH/L76qoU7v974wRTBRjkvQSfnrl0zKClBtjhSuOIkpdH4R5NkQB1kTYO
 NMPZDZY5bFIl0reLf6L3hRFm5H235wFd6qYyNs3FkYX44Q97++guhl+/JrTmyF0OQWgm
 AwVA==
X-Gm-Message-State: AOJu0YzrwF+x2ooIeObI2yBkIjvHznwlVTCxW1e1rv5NhqxcIXxB/MFr
 FgTmobJ9o0OivOQq2rLvcKTUMxwgvMfjvVwVRyzE9L488ahIrO7Q
X-Google-Smtp-Source: AGHT+IEBLE0HR+usOqrbO9kqmBEVegE9Oqw6rqhuhItCAFZ0cYTpP7kQzhXZDecSoyRM44YX4GcfwQ==
X-Received: by 2002:a17:90a:e387:b0:2d8:8430:8a91 with SMTP id
 98e67ed59e1d1-2e5616e69b8mr7743161a91.10.1729352450192; 
 Sat, 19 Oct 2024 08:40:50 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-2e55d7ade96sm2781319a91.1.2024.10.19.08.40.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2024 08:40:49 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Sat, 19 Oct 2024 23:38:04 +0800
MIME-Version: 1.0
Message-Id: <20241019-ssif-alert-gpios-v1-1-483eee5f99d3@gmail.com>
References: <20241019-ssif-alert-gpios-v1-0-483eee5f99d3@gmail.com>
In-Reply-To: <20241019-ssif-alert-gpios-v1-0-483eee5f99d3@gmail.com>
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quan Nguyen <quan@os.amperecomputing.com>, 
 Patrick Williams <patrick@stwcx.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729352444; l=1060;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=Ox+0thN9kPglPoXsy/wkj2zaKeHrfkwDa5J9akhvaKY=;
 b=kU+lBaa0FelMbNLd7IpLSp/VudEMLnENj7/AG7MzIPWjAjUQkoJVymsT1QBJNjDLKBNS7gGr8
 XCd5d0jNuUdCJnpvMurroC2pUdsBhIo9Ant4UVslZY+G4M8d/USd/H0
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Introduce the `alert-gpios` property to define an alert pin, 
 enabling the BMC to notify the host when a response is available.
 Signed-off-by:
 Potin Lai --- Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 7 +++++++
 1 file changed, 7 insertions(+) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.179 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t2BZX-0002q5-RW
Subject: [Openipmi-developer] [PATCH 1/2] bindings: ipmi: Add alert GPIO
 enhancement for SSIF BMC driver
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
Cc: devicetree@vger.kernel.org, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Potin Lai <potin.lai.pt@gmail.com>,
 Cosmo Chou <cosmo.chou@quantatw.com>, openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Introduce the `alert-gpios` property to define an alert pin, enabling
the BMC to notify the host when a response is available.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
index 02b662d780bb..104283fa851a 100644
--- a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
@@ -19,6 +19,12 @@ properties:
   reg:
     maxItems: 1
 
+  alert-gpios:
+    description:
+      GPIO pin designated for SSIF alert, used by the BMC to notify the
+      host when a response is available.
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -34,5 +40,6 @@ examples:
         ssif-bmc@10 {
             compatible = "ssif-bmc";
             reg = <0x10>;
+            alert-gpios = <&gpio 0 GPIO_ACTIVE_LOW>;
         };
     };

-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
