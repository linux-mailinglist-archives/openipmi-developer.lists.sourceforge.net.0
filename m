Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 886C1A48504
	for <lists+openipmi-developer@lfdr.de>; Thu, 27 Feb 2025 17:31:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tngnN-0007sE-Av;
	Thu, 27 Feb 2025 16:31:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tngnL-0007s5-Li
 for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Feb 2025 16:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9GeYTXENMr3flP3ciwo2GiPqCMR91G8nXsrWmZtyddE=; b=TKr4P754k2forHAKcDWsxwnAOP
 gp11Z0xDrLmyTllkOlKlCNbQzy6bEOB0CNNRedWMIKgJm12U/Xpga3k6em8incafr9X0C3iCZJZxx
 tXEUXjdwY6ExmHHdaLsCgBDtuQCDrlMOfanWKJMl+Y8w7lpNp2ohPjb/SbvJc/jE8kuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9GeYTXENMr3flP3ciwo2GiPqCMR91G8nXsrWmZtyddE=; b=b18nti0TYk7MMcpGQPQGfGuPrT
 vQl+/UNSQOCTtXsfgEJDA+koglayA5B80v8qXOG3cov9ygKWtgu/SgGquCEO2oDzNF74P4gEH/Gtc
 cukY761vg1u8PdKZsMXrg40PaaC9aGf7ToX7V9QWAwer3xkcpv6q//wW32pfXbDbYkgI=;
Received: from mail-lf1-f46.google.com ([209.85.167.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tngnK-0001or-R5 for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Feb 2025 16:31:31 +0000
Received: by mail-lf1-f46.google.com with SMTP id
 2adb3069b0e04-54605bfcc72so2630480e87.0
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 27 Feb 2025 08:31:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1740673884; x=1741278684;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=9GeYTXENMr3flP3ciwo2GiPqCMR91G8nXsrWmZtyddE=;
 b=1kGJJ6+fcyCV/E+WcOnuPLwL/1NF89JuFK8bpoWxAyp0JpotHPkjAd4WbNkDkym80f
 9XQ/TbTMsSIWT6MYiSgHZ43G5jUXU/07NGRh7THYPeyreS9puVjZDWHMeY4Gp7Be5WnQ
 1PjgMX6WDAr6h6CT1s171ltarz9mzBZlOcHRHrg3ClKGoPtVnu5Rd4TvYZ8ClcjeePTQ
 k9ZPI6UGNUCOHWXh850zfZSCXZ5UN65VC5P6H24SwEYevPEK8Mdqsp4zxhOOdRqDeOyd
 CB4SkKJfWUsUcyhQQgo7PDmLhe2THGVScYg5nXdZyncoyBbbU8I8QL029HVxjlBHtVI6
 X4wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1740673884; x=1741278684;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9GeYTXENMr3flP3ciwo2GiPqCMR91G8nXsrWmZtyddE=;
 b=OVhDQ6w3DrSxaWwXkRs5dVXeRb6fxlFGDBBDH1LadVNbrgO5BrKYSwOlRVy19qxIBG
 M9FcQg6OTyXj5FOCIllmyhq8JMzbswqmWVKwyM5SyLF+3QaRIVBMx2LlzCjh4Il4RKn2
 w4//N9kHZsZBZQZm1GcXduHM6rEl8LzO2YtGEsgSjEjmmOjotJTf2q6RH4jErwXabAny
 g9bWCbCm4/7t82fWChlf8B7pEfksXlnCpn+aryeMszOBKWLc+ycr/mD4bInIXYaw3cL7
 bPs0pVYyqoxk2e2RCMBWxTNZFWqxrLmI+HlaumrP4aAiYT50W2sk0g34cTHSB7V+ckxH
 1Qjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUf9eZguSRzOv/clTfbl7eXINKTwYipE4J1lYgVEDP1Y3kbK0h0XWBa6tQ73Uar31Ti3VZVYaS34hq7vuVSAbvZUcs=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxu6vi8arqeybv9qxW2n0FbgxASsqH36qTp/QT6CFUn+b/7Grlx
 Dh2Yb4a18SqpEDSzWXzVDdR8kE+ErRxBTd+aFISmJRHKxV+dguAaO+TgdI84iB+ergTNxLa1EQ5
 UDBmfZf+EWKNnIvtSFqh4ubh92pMQ3L4GuN7Vgz+O7Z0Sbla8
X-Gm-Gg: ASbGncubQgkLQf+CnHVKcmtYL5+NmWZFiQ3F7GnPXdUn8pPW8D4pUpffD4cqPVXumnV
 D+FBD9zSND9Y4WC2L3aI2dArYKT7EF4492pN+2yTATxrKjrmpoZujTa6Xm9zRaRBwI13AYRsENz
 vMqfQXxUKjOFEG14TI2eVB8pIf7LS55Lhq7MuPYw==
X-Google-Smtp-Source: AGHT+IEUbAC3kjl5eNNXKnBI/MMkmVbVJWoGnJKM7ezHnOTqe5P7XXqY0IVO/n+TvmfZpG/9CNbmwSisZkbfQ+rFnfw=
X-Received: by 2002:a05:6512:281d:b0:545:d54:2ebf with SMTP id
 2adb3069b0e04-5494c107e76mr52906e87.3.1740673883880; Thu, 27 Feb 2025
 08:31:23 -0800 (PST)
MIME-Version: 1.0
References: <20250204194115.3899174-1-ninad@linux.ibm.com>
 <20250204194115.3899174-2-ninad@linux.ibm.com>
 <fd92f75620e48957c2875cdcfd1285c33d3176e6.camel@codeconstruct.com.au>
In-Reply-To: <fd92f75620e48957c2875cdcfd1285c33d3176e6.camel@codeconstruct.com.au>
From: Corey Minyard <corey@minyard.net>
Date: Thu, 27 Feb 2025 10:31:12 -0600
X-Gm-Features: AQ5f1JrxG1t1lSqYDcbZpYZ-TVphariQNf3aM6dUFwiyKs1tLOEBbUdBR-9V5Rs
Message-ID: <CAB9gMfqkRZY3y5V+WDyxvyrdzWNWu2gjmyEnj8mygo85hjX8sw@mail.gmail.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Oops. Go ahead and take it through the BMC tree. Acked-by:
 Corey Minyard <corey@minyard.net> 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.46 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.46 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.46 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.46 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1tngnK-0001or-R5
Subject: Re: [Openipmi-developer] [PATCH v9 1/9] dt-bindings: ipmi: Add
 binding for IPMB device
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
Cc: andrew@lunn.ch, conor+dt@kernel.org, linux-aspeed@lists.ozlabs.org,
 minyard@acm.org, robh@kernel.org, brgl@bgdev.pl, eajames@linux.ibm.com,
 linux-kernel@vger.kernel.org, Ninad Palsule <ninad@linux.ibm.com>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 openipmi-developer@lists.sourceforge.net, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T29wcy4KCkdvIGFoZWFkIGFuZCB0YWtlIGl0IHRocm91Z2ggdGhlIEJNQyB0cmVlLgoKQWNrZWQt
Ynk6IENvcmV5IE1pbnlhcmQgPGNvcmV5QG1pbnlhcmQubmV0PgoKT24gVHVlLCBGZWIgNCwgMjAy
NSBhdCA2OjAx4oCvUE0gQW5kcmV3IEplZmZlcnkKPGFuZHJld0Bjb2RlY29uc3RydWN0LmNvbS5h
dT4gd3JvdGU6Cj4KPiBIaSBDb3JleSwKPgo+IE9uIFR1ZSwgMjAyNS0wMi0wNCBhdCAxMzo0MSAt
MDYwMCwgTmluYWQgUGFsc3VsZSB3cm90ZToKPiA+IEFkZCBkZXZpY2UgdHJlZSBiaW5kaW5nIGRv
Y3VtZW50IGZvciB0aGUgSVBNQiBkZXZpY2UgaW50ZXJmYWNlLgo+ID4gVGhpcyBkZXZpY2UgaXMg
YWxyZWFkeSBpbiB1c2UgaW4gYm90aCBkcml2ZXIgYW5kIC5kdHMgZmlsZXMuCj4gPgo+ID4gUmV2
aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBOaW5hZCBQYWxzdWxlIDxuaW5hZEBsaW51eC5pYm0uY29tPgo+ID4gLS0tCj4gPiAg
Li4uL2RldmljZXRyZWUvYmluZGluZ3MvaXBtaS9pcG1iLWRldi55YW1sICAgIHwgNTYKPiA+ICsr
KysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNTYgaW5zZXJ0aW9ucygrKQo+
ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
aXBtaS9pcG1iLQo+ID4gZGV2LnlhbWwKPgo+IFdvdWxkIHlvdSBsaWtlIHRvIHRha2UgdGhpcyB0
aHJvdWdoIHRoZSBJUE1JIHRyZWU/IE90aGVyd2lzZSBJJ20gaGFwcHkKPiB0byB0YWtlIGl0IHRo
cm91Z2ggdGhlIEJNQyB0cmVlIHdpdGggeW91ciBhY2suCj4KPiBBbmRyZXcKPgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZl
bG9wZXIK
