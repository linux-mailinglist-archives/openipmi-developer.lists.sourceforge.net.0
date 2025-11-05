Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 750EBC35DCC
	for <lists+openipmi-developer@lfdr.de>; Wed, 05 Nov 2025 14:37:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=efYB2vFJupSKReWIcCu9EppsKvZY+lv0F3Fp208nQsc=; b=fyYoyhXCp+eSNCng81HWXCqT3m
	17R2PwFGQJlBb+lPyKdF/Qr0qmDblgHn/PMjpaUkzMjJwIYGyFIUDCk5j5jqNiG9GJu+HDYMMRppV
	b101POIXFk+IgklVsgnBwvVAbf40NCc04AliMHrs0GNGBxODRRxiBjJb9ob+kbvYiqhE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vGdhJ-0007k9-Vz;
	Wed, 05 Nov 2025 13:37:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bagasdotme@gmail.com>) id 1vGd2l-0001qG-3I
 for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Nov 2025 12:55:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1RfaksWJE0d3VMCElIbQg6mYL84G2wqZDW7eYD0q+rs=; b=OPJg8LnNwXcPH63HW7wqOp5Yuj
 H1gFbHTQ6noSW+GHrpVlsJbF5VRr8ChQwVLnJPpcJRYflcbEBCtjoMM55YnRfYQ/vLvGGZbDj90Rf
 pwXuxebnLwq2XRLIGWcDc3wnnFfpgGigrgrL2j/vXKeOEKNzCcpKjSVPj89iQdZvJk74=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1RfaksWJE0d3VMCElIbQg6mYL84G2wqZDW7eYD0q+rs=; b=J
 vdtNCM2yvHQvrC3suvVAwnSV3J2DPTKkuTrsI3msEOoVEfVJ1dYuPWMyHA9hN/jHgLeCO3DqifUjk
 eIT9vpvGcL/rRhppIStDxQdeTY813mbjrDI/Wwa8vtx9BRRhS/Al69dEGqSaQNoPUVmNvmGdFK4bt
 IVJ6Cgmf6wMy0nFc=;
Received: from mail-pj1-f52.google.com ([209.85.216.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vGd2k-0005r1-Jh for openipmi-developer@lists.sourceforge.net;
 Wed, 05 Nov 2025 12:55:19 +0000
Received: by mail-pj1-f52.google.com with SMTP id
 98e67ed59e1d1-3410c86070dso2593837a91.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 05 Nov 2025 04:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762347313; x=1762952113; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=1RfaksWJE0d3VMCElIbQg6mYL84G2wqZDW7eYD0q+rs=;
 b=UYvRX1WJFgWN5CsN1u0MtIuNWIzLg+XGIAAfAieaLqexfpyHarcX6RffF1YkfhT5vj
 lKHjRYFiAse3QmTfB+7c65kk3aO2YE8A6GLZbSJ7CnpmU1eGr85IC9pd8xA57j7qw1v/
 D1HkX+lBGD1TNp0VYhah7EdOf+EYBqraijN8UOvQ8shIXvUTRXEu9H9fx76ZSrI8TyO9
 UWx5g3XuVxjvQUCETrk+TgQR260lerS3UtxMJ10LIemfXxGJ67L3saBlY6qkDg0rLd5o
 iC06TR0FARtfNTg5doHX1f6JiJrMSh4NmlECzJylm0d9kNXlUtlV+k9DkpE1r+QdnrKp
 EUhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762347313; x=1762952113;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1RfaksWJE0d3VMCElIbQg6mYL84G2wqZDW7eYD0q+rs=;
 b=nYJo4aoqKVCO9n2yer8af/ngxgts6vAWlboeccIs7WXFYpsDne4th8xGopd22gZO8l
 N2qm8+33ydGDVhNiHXd+FBMasW3+ODrdNlHBYwJ+ba8KCvV1BaFZC5L0/IG4aSsYuCCq
 sJlIj72PqJjJm0NnGosP5qKMJd4poeMQnERlcVzihKZtaFdkTdwxfawfVnNKJbWGIBuF
 OHEZ6NtdqDcG/p2ShCcBrBEifXykp1feb2bvnGj/psJFUXB09CkVW8hLwGg3KFNj4Y/y
 bwo+pKdQ8tH6jBMhqSxFXoHo2IbGICyRwFBeavRSwMIG7GTXpWGFPs7To9QYPACJrTU0
 S3Kg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXZjp6TVIcPT4YJMsrYmk0lUU914AnKQqCMiKi1oqrN46mgDcCYoUv9VopVLvo0Q/HEvlp6Ik5iK2k3DgfyZPEzjis=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyFjZ9ZH533AyYa6sae9O8Iel9tv6EqopAmYMMccdougnRHtd8g
 2tU76ePkhwoxDj9/O8iTZx/Kq7dPPyStlTg6IvTW9uPaq9rMeFxcPVfI
X-Gm-Gg: ASbGncuXOaY0E7Q9NHu0RigRqj2wyQaZy0F8VwLZaVQu5StCs9Sc/iUNYjlWy9gdF5g
 7fAu8bya/Jk1++QUdwO/WqazcedpVqo/9KRliyzGGD2aipiAy+oZhF87HuTkh+9OT83SZw8IDMC
 J4DYkU3G7Np+waKQKJEaasEdg/gQPrSRa7iSBxbpIb5daSejh+60QkJtdUi9Z+qUbP04jJKD6Dj
 9KIEuXp0n1RcsDFWysoNKZ6w0vsZGp0piShFHFQlEzFne3oWS9eYLRmaWhnaTBvWdmC4iIEK1Y9
 kDaSVn5uj/K11IEzfba/FQIFKsyewGMkutotCegtPJ9Kkjx6Pd47ZnhHHH3dTGdQyV+KeyFm6Ip
 irxIV4DqO3noGtJnkqeLGPGgA9KyMZslwK80AMqzk+TiZWxgf/UUVTcUPheso/CkBKWchd4BFVz
 zj
X-Google-Smtp-Source: AGHT+IHL1apm7PIdUs/PaS9mChKE7wtKefYCCLYmCyunjycPDwXiaaAlhs8Q3Fs/tPla3kMZKGUiQA==
X-Received: by 2002:a17:90b:3843:b0:339:cece:a99 with SMTP id
 98e67ed59e1d1-341a6c2d9ccmr3797669a91.13.1762347312700; 
 Wed, 05 Nov 2025 04:55:12 -0800 (PST)
Received: from archie.me ([210.87.74.117]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-ba1f1a19e70sm5469191a12.7.2025.11.05.04.55.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Nov 2025 04:55:12 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
 id 7E2DB420A6A0; Wed, 05 Nov 2025 19:55:09 +0700 (WIB)
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Documentation <linux-doc@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net
Date: Wed,  5 Nov 2025 19:54:49 +0700
Message-ID: <20251105125449.45643-1-bagasdotme@gmail.com>
X-Mailer: git-send-email 2.51.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2528; i=bagasdotme@gmail.com;
 h=from:subject; bh=Wn8M4nU+g/UwE05Qu/WSvpGvx9G0oLrJnBTtlyx7Ujc=;
 b=owGbwMvMwCX2bWenZ2ig32LG02pJDJncbjP+ur//qaPnmpoSrpLBoSc1r6bin820u8kn5QzSP
 zFkczt3lLIwiHExyIopskxK5Gs6vctI5EL7WkeYOaxMIEMYuDgFYCIGTIwMd678OKPJvzv3W/65
 GQUTJl7c+innblfT+pU2GboKLqGKaYwMH5+tjD2d1Gn19XGwqvLPvavUpbk/L/JexDBhJV8G078
 2VgA=
X-Developer-Key: i=bagasdotme@gmail.com; a=openpgp;
 fpr=701B806FDCA5D3A58FFB8F7D7C276C64A5E44A1D
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Steps for loading IPMB driver at boot time,
 written as enumerated
 sublist, is indented instead on the same level as its parent list. Indent
 them as appropriate. Signed-off-by: Bagas Sanjaya ---
 Documentation/driver-api/ipmb.rst
 | 48 +++++++++++++++ 1 file changed, 24 insertions(+), 24 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [bagasdotme(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.52 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vGd2k-0005r1-Jh
X-Mailman-Approved-At: Wed, 05 Nov 2025 13:37:12 +0000
Subject: [Openipmi-developer] [PATCH] Documentation: ipmb: Indent boot time
 loading steps
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
Cc: Corey Minyard <corey@minyard.net>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Steps for loading IPMB driver at boot time, written as enumerated
sublist, is indented instead on the same level as its parent list.
Indent them as appropriate.

Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 Documentation/driver-api/ipmb.rst | 48 +++++++++++++++----------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/Documentation/driver-api/ipmb.rst b/Documentation/driver-api/ipmb.rst
index 209c49e051163f..dd99d034272b7e 100644
--- a/Documentation/driver-api/ipmb.rst
+++ b/Documentation/driver-api/ipmb.rst
@@ -48,35 +48,35 @@ CONFIG_IPMB_DEVICE_INTERFACE=y
 
 1) If you want the driver to be loaded at boot time:
 
-a) Add this entry to your ACPI table, under the appropriate SMBus::
+   a) Add this entry to your ACPI table, under the appropriate SMBus::
 
-     Device (SMB0) // Example SMBus host controller
-     {
-     Name (_HID, "<Vendor-Specific HID>") // Vendor-Specific HID
-     Name (_UID, 0) // Unique ID of particular host controller
-     :
-     :
-       Device (IPMB)
-       {
-         Name (_HID, "IPMB0001") // IPMB device interface
-         Name (_UID, 0) // Unique device identifier
-       }
-     }
+        Device (SMB0) // Example SMBus host controller
+        {
+        Name (_HID, "<Vendor-Specific HID>") // Vendor-Specific HID
+        Name (_UID, 0) // Unique ID of particular host controller
+        :
+        :
+          Device (IPMB)
+          {
+            Name (_HID, "IPMB0001") // IPMB device interface
+            Name (_UID, 0) // Unique device identifier
+          }
+        }
 
-b) Example for device tree::
+   b) Example for device tree::
 
-     &i2c2 {
-            status = "okay";
+        &i2c2 {
+               status = "okay";
 
-            ipmb@10 {
-                    compatible = "ipmb-dev";
-                    reg = <0x10>;
-                    i2c-protocol;
-            };
-     };
+               ipmb@10 {
+                       compatible = "ipmb-dev";
+                       reg = <0x10>;
+                       i2c-protocol;
+               };
+        };
 
-If xmit of data to be done using raw i2c block vs smbus
-then "i2c-protocol" needs to be defined as above.
+   If xmit of data to be done using raw i2c block vs smbus
+   then "i2c-protocol" needs to be defined as above.
 
 2) Manually from Linux::
 

base-commit: 27600b51fbc8b9a4eba18c8d88d7edb146605f3f
-- 
An old man doll... just what I always wanted! - Clara



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
