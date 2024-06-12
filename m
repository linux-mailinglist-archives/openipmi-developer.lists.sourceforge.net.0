Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF6F907CE7
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jun 2024 21:50:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sHqSS-0004H8-5f;
	Thu, 13 Jun 2024 19:50:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <potin.lai.pt@gmail.com>) id 1sHFhf-0005kQ-Ay
 for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Jun 2024 04:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qTyD16RFQ5VgBq536t1s/LvsqXQluQ48tMeqJSZ+Xus=; b=JmkdIJQtvzH89LfxoOi6BxEhcl
 Odw/8zWGCr3TGte3Ca+4U1YpRyMskqCIpryG6EyRfdH03eu01XkcZOqINQIxjb9MMDa+EVf/K2FUg
 cG1o23iLehhk/y2b0ktgBH5Qkf2vhshZ/dkaZy7x5U/BbkUWVl5iX1kQgXnhspe25fzg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qTyD16RFQ5VgBq536t1s/LvsqXQluQ48tMeqJSZ+Xus=; b=e6LPufGOuElBmMJdX4maO/Ff39
 nBwBPAYbEc5pu+BB7Pg6laeW/D8L+O+nlVn5Nc4BV68eN2BnQSG93KeZzT9FO79VBskTg7O+0vpqb
 Vw7jiYB0lYtQ4mrZI52IVwFnSv3oAKEB8kjPi9m/Dx35z2bb0d7NRSbwbCQsov8ll3a4=;
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sHFhf-00071J-Qp for openipmi-developer@lists.sourceforge.net;
 Wed, 12 Jun 2024 04:35:19 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 006d021491bc7-5b52b0d0dfeso3198835eaf.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 11 Jun 2024 21:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718166908; x=1718771708; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qTyD16RFQ5VgBq536t1s/LvsqXQluQ48tMeqJSZ+Xus=;
 b=gALRJjPKMl1alTi3/WSheuHjXHTh/KqbsqUMQOfKeJtV5hs+FseuXqsID1JRlTP57T
 s7rBnFjInm9GrLxKFbt9MA2VZWdOecEV8Lkfr6qBTBQUQLpHhpvcX5uCJuRnN9IUdMUU
 UJtGRnX2mKgPGGmuZsWvXl2iMfo98zayhNYJBEB/mfDCKHa2rfvDsVpRCLaxJYwSNWHQ
 OXeBNW4MP6s+SA4KhVEC/V64Z4xCuk9P3znSnPNX0IfVWyzsGiTKocBbneDb9TfjC4pk
 VFPuYQFyNgjQ9txRVnJTnpvtZUPzu+sEThcV0mrxFirGMTnP4SaWrLsi03g7d5ycSil3
 ijkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718166908; x=1718771708;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qTyD16RFQ5VgBq536t1s/LvsqXQluQ48tMeqJSZ+Xus=;
 b=Sx56gKq5PnrcKi2DG6+ylkv78+USRdlcLV9BLNGNgVgOEGg0PnOG/mJ2rsVX6yF/mP
 LRVyHVUaYWkZFRK5gtsHIBCBJXE8a4Ulz1pnwYpoLKov1mq0mgE1MLbljzSQ39lkYtjD
 U0mHXNUeMZHJ6g+DpYjlHnWtXG5z/kIZcykKWnS63aGcyWGOM3RwyvBcoTj9qJpQ1mX4
 ZywTLlzvX3oLJMtKsPKNs2TK99CWd5jmZ9qlYTGkhrJkW2iZOtdC0bqk6YJIihNY64RQ
 33mxIrckDE3oiPtc96NXOtH14IxwnY5x0aTxoor3bbYQmDhuaseMe8+MFYYtZvPscazn
 uJ3w==
X-Gm-Message-State: AOJu0YwVRqlrWEGj+Zm24KYgRn49tKSvoIoa6WD3sZG5m0kGNfOlQUhD
 E+YLKhiHpxYOFBP4YgW4BNv8XeDFAO+BSIJcg2ODfRPuQNg4ODr4
X-Google-Smtp-Source: AGHT+IGyC/QSfUB3ZpKqYU/VL3KGDjocadn6drhlahW8uh0DL57o6PXA3SQqhkrXEc5qD/6rFnOFyA==
X-Received: by 2002:a05:6820:1506:b0:5ba:c561:bdd7 with SMTP id
 006d021491bc7-5bb3bad5bc5mr819684eaf.8.1718166908132; 
 Tue, 11 Jun 2024 21:35:08 -0700 (PDT)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net.
 [61.220.246.151]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-6de276061e3sm9021275a12.80.2024.06.11.21.35.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jun 2024 21:35:07 -0700 (PDT)
From: Potin Lai <potin.lai.pt@gmail.com>
To: Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quan Nguyen <quan@os.amperecomputing.com>
Date: Wed, 12 Jun 2024 12:32:54 +0800
Message-Id: <20240612043255.1849007-2-potin.lai.pt@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20240612043255.1849007-1-potin.lai.pt@gmail.com>
References: <20240612043255.1849007-1-potin.lai.pt@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: In ARM Server Base Manageability Requirements (SBMR) document,
 Callers can choose to not read back Response Data after sending the command
 "Send Boot Progress Code". Define "arm-sbmr,
 skip-bootprogress-response" property
 for skipping the response of "Send Boot Progress Code" from userspace. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.161.51 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.161.51 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [potin.lai.pt[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.51 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sHFhf-00071J-Qp
X-Mailman-Approved-At: Thu, 13 Jun 2024 19:50:00 +0000
Subject: [Openipmi-developer] [PATCH 1/2] bindings: ipmi: Add property for
 skipping SBMR boot progress response
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
 Patrick Williams <patrick@stwcx.xyz>, Cosmo Chou <cosmo.chou@quantatw.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SW4gQVJNIFNlcnZlciBCYXNlIE1hbmFnZWFiaWxpdHkgUmVxdWlyZW1lbnRzIChTQk1SKSBkb2N1
bWVudCwgQ2FsbGVycyBjYW4KY2hvb3NlIHRvIG5vdCByZWFkIGJhY2sgUmVzcG9uc2UgRGF0YSBh
ZnRlciBzZW5kaW5nIHRoZSBjb21tYW5kICJTZW5kIEJvb3QKUHJvZ3Jlc3MgQ29kZSIuCgpEZWZp
bmUgImFybS1zYm1yLHNraXAtYm9vdHByb2dyZXNzLXJlc3BvbnNlIiBwcm9wZXJ0eSBmb3Igc2tp
cHBpbmcgdGhlCnJlc3BvbnNlIG9mICJTZW5kIEJvb3QgUHJvZ3Jlc3MgQ29kZSIgZnJvbSB1c2Vy
c3BhY2UuCgpTaWduZWQtb2ZmLWJ5OiBQb3RpbiBMYWkgPHBvdGluLmxhaS5wdEBnbWFpbC5jb20+
Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkvc3NpZi1ibWMueWFt
bCB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaXBtaS9zc2lmLWJtYy55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2lwbWkvc3NpZi1ibWMueWFtbAppbmRl
eCAwMmI2NjJkNzgwYmJiLi5iMjFlOTU4ZWZjMTg0IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvaXBtaS9zc2lmLWJtYy55YW1sCisrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9pcG1pL3NzaWYtYm1jLnlhbWwKQEAgLTE5LDYgKzE5LDEx
IEBAIHByb3BlcnRpZXM6CiAgIHJlZzoKICAgICBtYXhJdGVtczogMQogCisgIGFybS1zYm1yLHNr
aXAtYm9vdHByb2dyZXNzLXJlc3BvbnNlOgorICAgIHR5cGU6IGJvb2xlYW4KKyAgICBkZXNjcmlw
dGlvbjoKKyAgICAgIFNraXBwaW5nIEFSTSBTQk1SIOKAnFNlbmQgQm9vdCBQcm9ncmVzcyBDb2Rl
4oCdIHJlc3BvbnNlLgorCiByZXF1aXJlZDoKICAgLSBjb21wYXRpYmxlCiAgIC0gcmVnCi0tIAoy
LjMxLjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
T3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
