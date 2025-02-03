Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 90432A25A6E
	for <lists+openipmi-developer@lfdr.de>; Mon,  3 Feb 2025 14:12:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tewF6-00006N-Cn;
	Mon, 03 Feb 2025 13:12:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1tewF4-00006G-VF
 for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 13:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b1FY1lFZx1d7qtietTMvsLIGmuJzU+GwniaWJjqysAo=; b=Bb3GweSGl6f4q8Kvykw1hjQRHv
 nWxgshzeX1kV+kZz7Mdlwy+M/bHAXB3MQsw8cdafJs6TBjeAzb2QEVuvA7/ilvRo+8tGW+PK2d3Wq
 +O0s+IrpdY7N5KpXacQqE2Suhz+EYHzPUfwsM8qOepZ/96w79vAdlXZp3GC/yj/VDSPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b1FY1lFZx1d7qtietTMvsLIGmuJzU+GwniaWJjqysAo=; b=YEZ3nNm1AybxYXNRmZlAzpySfq
 o9RcBEyn3wkdKQIo09gxSuOnLLmO5LN++4/Q671zOn2MRPdrZB7S6YjtHMBloSUGgL3rah4Kjg3DK
 h07bjyvC1mw8nrFhhbRVZor87womKwpLB4v2nbJgpe9SlDvwOMGpqAsjgQT42TKELhbo=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tewF4-00027y-Bn for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 13:11:58 +0000
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-21644aca3a0so100521275ad.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 03 Feb 2025 05:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738588308; x=1739193108; darn=lists.sourceforge.net;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=b1FY1lFZx1d7qtietTMvsLIGmuJzU+GwniaWJjqysAo=;
 b=HFEASHzjVCfj78zrMS1uolkas00PHIYeyitR2APAPoA7nhdI1OhhVm7icz9bNMza9v
 BO9kpLGtwzx+23t8G5YwmOaI2EmmiZyfAbd0OWms4c3v3ojuA349Cn7rouAPXbD8+cJH
 bEGp7D09pVF+OHfweczsF/PERwRIz2O5ak0H050f71138E79U5i2/JnlRxplo+1Zcqv1
 O18WSN9eQlWpCKXORWhpWuOOcmHNg54H8kZW2iGLzEYEoTGq4KPIUn4BQs+yqp/+eWRH
 WXYMFwQFDxb4ZwtiBWGsy+up7dxjQ6C6n6A907+1nt8siO58iwnP7neOuxFy03uBf6l0
 /DoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738588308; x=1739193108;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=b1FY1lFZx1d7qtietTMvsLIGmuJzU+GwniaWJjqysAo=;
 b=XqsrDx4GE0S9rUh86QsaW4tWcOdOufXkTqKX5kYl4iSuBTNKre2ddaiYfhrT+WrKJn
 zmyOzPCcnQ4XWts5ysOdPkIh2SeUMAumy9jApkyOK6bdqV9X/2bOpD2sSFVayFEispgr
 BtarFGpcW/ketUoXyW3eLKJdB9F7wD5S3X8iXJxviyQfBvCgnqL6+fcRCW+IvohnyeQ9
 AiwS5uoUZt4CFiY7r3jBjOOY3/yi/e5Xt/xWNFSJIPS96yL2Ts6XHzyXMZQAMAIyPAfP
 AWQhI8Fxqd43PqDLNeT686SC3U3ssMamOfip9iHciQ+p8+F2wzrVzGEQyTacVszjRa3X
 1dKg==
X-Gm-Message-State: AOJu0YwI4Uf/1dMDlbtI3ehdntU/avQ1+4gnzMrV0CnABNBvId3IT75V
 o4tV5RAKcxLn7OsWgyjTDSltJw4QJMww/jElpnZ82AnI/2Scr3He
X-Gm-Gg: ASbGnctn53g28Q5PSWQ07ATxewzKknfgAaKdM0ZGLbxsieZaDDX87mZ8A3MswXKdOzI
 Gz+UDX0isDS8wHHJ5AV5lpR0BNTu2q0j96S1rTp+gg38zvUc3G/1Y90Bty7OlfAGLCydzTO2cj/
 IpKodneCdz9hOKOgo5CbutkZ0SxUCcGjMMD+baUncKkTIwW12h/9a/TW8+5oKFpaoyNEB/uR9Xt
 GZOV7kFUv2W9NMVVYnuQm6Fs0DxnsGd/2pDLTMfAGVSepmaUa9uv74gpHZBaWwv3X+pZjGDxZW+
 XOelY43qnvR3KXRmeVlsBF/GDs9+98cL9mP0vsox/qwUzMPfJ1H4w+YiuavXOPfxvSqK
X-Google-Smtp-Source: AGHT+IGT7jAJmUUjkG0BGyDGRldNkdDhZUJrCU7FxK0JnZjhlR1jS8uZ/XiuM5Sfwz08ryIp703/Tg==
X-Received: by 2002:a05:6a21:9102:b0:1e1:faa:d8cf with SMTP id
 adf61e73a8af0-1ed7a6e1efcmr39872358637.40.1738588307666; 
 Mon, 03 Feb 2025 05:11:47 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72fe631be3csm8377629b3a.7.2025.02.03.05.11.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2025 05:11:47 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Mon, 03 Feb 2025 21:09:13 +0800
MIME-Version: 1.0
Message-Id: <20250203-ssif-response-timeout-ms-v1-1-6fe279740181@gmail.com>
References: <20250203-ssif-response-timeout-ms-v1-0-6fe279740181@gmail.com>
In-Reply-To: <20250203-ssif-response-timeout-ms-v1-0-6fe279740181@gmail.com>
To: Corey Minyard <corey@minyard.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quan Nguyen <quan@os.amperecomputing.com>, 
 Patrick Williams <patrick@stwcx.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738588302; l=1068;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=qw6/oRijMeiMYBDoqhdnPazfxbD4I4FYFWBsgfYvwO0=;
 b=GphBV5ux1rtL3yI82K1iZX8DbcLYPnDAEW6mgZAMtCBvCuJhsB8VvMB4KdeNGred/5XaW2fjV
 WP5bZpBWXC/A135QX0XhY812LMteOCwmJd80L8SKtM26uG24A5FJwPW
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The SSIF response is handled by a userspace application,
 which
 may exceed the default 500 ms timeout when the BMC or application is under
 heavy load. Add a new device tree property, `timeout-ms`, allowing platforms
 to adjust the response timeout based on their specific requirements. This
 helps prevent timeouts in scenarios where longer processing t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.176 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.176 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.176 listed in sa-accredit.habeas.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
X-Headers-End: 1tewF4-00027y-Bn
Subject: [Openipmi-developer] [PATCH 1/2] bindings: ipmi: ssif-bmc: Add
 property to adjust response timeout
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

The SSIF response is handled by a userspace application, which may exceed
the default 500 ms timeout when the BMC or application is under heavy load.

Add a new device tree property, `timeout-ms`, allowing platforms to adjust
the response timeout based on their specific requirements. This helps
prevent timeouts in scenarios where longer processing times are expected.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
index 02b662d780bb..c8a863d44f97 100644
--- a/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml
@@ -19,6 +19,12 @@ properties:
   reg:
     maxItems: 1
 
+  timeout-ms:
+    minimum: 0
+    maximum: 4294967295
+    default: 500
+    description: Response timeout in millisecond.
+
 required:
   - compatible
   - reg

-- 
2.31.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
