Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 971C1A25A6F
	for <lists+openipmi-developer@lfdr.de>; Mon,  3 Feb 2025 14:12:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tewF4-0007u7-5b;
	Mon, 03 Feb 2025 13:11:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1tewF2-0007tz-J5
 for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 13:11:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ERRh6bhULTaxnqjnEtSSbfFqlVmrwqBeGnZ+e7hDD18=; b=AwqwieYKkBUyz05cFkXSIoUPub
 d6VqSAW7fADW7NGX6fFH5inEELZCRCfU5O5BZTkWILiIn2yMrAv8aexOzWb/qcxra0Z2OKpg+9Qof
 oocl5WMYINRKzQvwDVvNOgq1evseobJ82oO2urhYRFAgyV74RMc7ONrOlj/a3fDh7p0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ERRh6bhULTaxnqjnEtSSbfFqlVmrwqBeGnZ+e7hDD18=; b=j
 K7087pHaPICWvOEpqDCYtCAdKLRfhUzIj16vz3ybi1GDGdE1IeBzcOpVv7ogPgOaIlNr01fb1Nf38
 1aOi5XMKFn5HjS5tbuWDza8Yppsv9q3T7egdfX+k9y8728j2tq0JXTzecn+vcD5UNohTc50aAntR5
 6FYbafIHZ0yvxugA=;
Received: from mail-pj1-f45.google.com ([209.85.216.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tewF1-00026u-RY for openipmi-developer@lists.sourceforge.net;
 Mon, 03 Feb 2025 13:11:57 +0000
Received: by mail-pj1-f45.google.com with SMTP id
 98e67ed59e1d1-2ee50ffcf14so8127262a91.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 03 Feb 2025 05:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738588305; x=1739193105; darn=lists.sourceforge.net;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ERRh6bhULTaxnqjnEtSSbfFqlVmrwqBeGnZ+e7hDD18=;
 b=J7Aan9EBxKmZvFsrZVLa51qVbugITVL+jfDDWkHKULQq3OIhTjZxaz6Ms/UPMY4zAN
 b6y0kaJs7NLv50zCiCQOHmII4zqQEpTed5I1slVThQHZdotmVBygkQw1SKevq8Crivfo
 iiyxClCRYQ7Aq3LVQuOYSrLSK9O906tZrKvxHyUk2I1UL0VuM5GdDFm+JfO56MFXv85Q
 CsYZ6BRPbQ+yhvK67FdIGULZK3Mht4NcEkPi0OnV3YERKei40BrjsxM/jPmP74aFwtOO
 wqbGGCQaekpqn78opKOCosahvYU41JpoF0zd5AgJmtPMpCCSQyZsHunUUt0kFonKt3Ko
 m+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738588305; x=1739193105;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ERRh6bhULTaxnqjnEtSSbfFqlVmrwqBeGnZ+e7hDD18=;
 b=T1Ph1dLWSejp2q803ldX70PxclGhKSswF9AfVqEapl9nW/ORbSzLJoeSEiwxdsMdnd
 WMudqMpVZhF1PAPuFTOaX+KzRV/GOMEnsPXOcljpUmZoD/hrNe37O9LzQGS5LK5FQQr1
 94B5yQ+iOt3plBBSxrC0lE8BtOZxcFvn/ukNg+owxUN+fq1/9yE8WIs65a+AfxiESRgo
 S0Nkz4YbEVNTptX9csj+2VO1uvAP/53YeNA7PSiUEx7A0oyJmQgoICwQifeUoUz2AC6u
 lSVuAnJciVBkSRo2mpZkOY6WM5UPK5AeYmFmX0giFO3Rua+XUmV5f2mTj2UEMdSFSM2A
 Ns5g==
X-Gm-Message-State: AOJu0YwHq2f4DJtG7ctsDyTxhR3Cua9xkSQYqlvmTijZlQNNOjSUisLM
 Vr6linDAL8yW0yTOkiCSIa3WkJTWXPBi9AuhEpgpzZxKuHH4PKjB
X-Gm-Gg: ASbGncsapKDIlbTfBHRjd6bmnpCxwCHD03HBnecUU4N45ydgioIVekC/f3zxLRZYcz/
 4LNwWlOr34ImKsfJYErW5YSECvLukzfLA92pEQcuA0v6dVO77/vN1qdhACPaoHZ63hNYUbBBB25
 zP5qrfUiqycF4sfVOwtOV3lMAcWc0cShX1DfP0kP++6D4l19dO76FV0EmIHfQA9Eib6zps9R09W
 qANQN0GVNNS6ph+4bih80ZybMisouaorDc7zSS+Y8YBthrGhpQgja98nDxV7lxzprEUeU94Ku6l
 53e1p9UHZw385bAFP2THAlNEZezLK3yfG9vXEC3pZNqf/a0xyq6p+Ormg+wDw2YxXDPP
X-Google-Smtp-Source: AGHT+IH4i92orUFnRVo9rLyLqwfaOElTRxGUQRBJpk9f36CmBg6ebio9whJ38cg0kwFE8XUnCvcjFQ==
X-Received: by 2002:a05:6a00:2e1b:b0:729:425:fde4 with SMTP id
 d2e1a72fcca58-72ff2c61dcfmr22974293b3a.11.1738588304994; 
 Mon, 03 Feb 2025 05:11:44 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72fe631be3csm8377629b3a.7.2025.02.03.05.11.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2025 05:11:44 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Mon, 03 Feb 2025 21:09:12 +0800
Message-Id: <20250203-ssif-response-timeout-ms-v1-0-6fe279740181@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPi/oGcC/x3MQQqAIBBA0avErBswJYquEi20xppFGo5FEN09a
 fkW/z8glJgEhuqBRBcLx1DQ1BXMmw0rIS/FoJVulVYGRdhjIjliEMLMO8Uz4y5o3OL63jpjOg8
 lPxJ5vv/1OL3vB0G9huhqAAAA
To: Corey Minyard <corey@minyard.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Quan Nguyen <quan@os.amperecomputing.com>, 
 Patrick Williams <patrick@stwcx.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738588302; l=1181;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=DzSU1APOzsACEuytza3v3Qeh6L0yur890Etpm9FdP1Y=;
 b=GAK/aX4VSX/tXNfs/Y9fqhcSM1vwK8pu5MogHQzQ5xKFxxmwp3ZvPuIAnc/D6mk9APw609dr7
 9uNIy81NfJ1AyPBSgYeMdvDXSQfejkYDNuZQEamhJFHEWPHEI6ZaVBU
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
 heavy load. To provide flexibility, this patch introduces the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.45 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.45 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.45 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tewF1-00026u-RY
Subject: [Openipmi-developer] [PATCH 0/2] ipmi: ssif_bmc: Add support for
 adjustable response timeout
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
To provide flexibility, this patch introduces the `timeout-ms` property in  
the device tree binding, allowing platforms to adjust the response timeout  
as needed.  

If `timeout-ms` is not specified, the default response timeout remains  
500 ms, ensuring backward compatibility while giving platforms the option  
to configure a longer timeout when necessary. This prevents timeouts in
cases where userspace processing may take longer.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
Potin Lai (2):
      bindings: ipmi: ssif-bmc: Add property to adjust response timeout
      ipmi: ssif_bmc: Add support for adjustable response timeout

 Documentation/devicetree/bindings/ipmi/ssif-bmc.yaml | 6 ++++++
 drivers/char/ipmi/ssif_bmc.c                         | 8 +++++++-
 2 files changed, 13 insertions(+), 1 deletion(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20250203-ssif-response-timeout-ms-3bdb88ab337f

Best regards,
-- 
Potin Lai <potin.lai.pt@gmail.com>



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
