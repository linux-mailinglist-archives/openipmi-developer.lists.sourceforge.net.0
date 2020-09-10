Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 12391264920
	for <lists+openipmi-developer@lfdr.de>; Thu, 10 Sep 2020 17:54:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kGOu8-0003kQ-0x; Thu, 10 Sep 2020 15:54:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kGOu6-0003k7-RG
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Sep 2020 15:54:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Cc:To:From:In-Reply-To:Message-ID:Subject:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1a4WiYaIgmzOIod6TO4GjxTcWFUr+9gJqOS70xBdw4E=; b=WXFfJD5FAwQkAo0vvfe+VOs7Cf
 1Pc4VaB+JEkpbM3LA04fzs6ghDdR075JjeM7iUGpo1bIqeABf/UDIwpIp+ybo4KTi1nOGlFcrScrQ
 PzvBYjr/GB+FJ7Lkp+IzSlpkysyLv8FhTW5oZJGBtaNZg7NEc2vsDXPE+zrsPi85Dv5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:To:From:
 In-Reply-To:Message-ID:Subject:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1a4WiYaIgmzOIod6TO4GjxTcWFUr+9gJqOS70xBdw4E=; b=ZqzGAyD9Z/qG4h7gpFVq4mFelc
 c4V7EwmnjiXwhLRwB91n4U3lDyPPbn6vrof7FvvNPFrxwduKpzrDFPAL1m25ItOrmoV2R+9XIUdUl
 ECmQJQVaafOfzcJXf0UARxwqgXT4jjeixC3dPnTFhnWEs89f6nEkHhdkZ2GyStjT1FTc=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kGOu0-002Duz-FU
 for openipmi-developer@lists.sourceforge.net; Thu, 10 Sep 2020 15:54:30 +0000
Received: by mail-ot1-f67.google.com with SMTP id o6so5779661ota.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 10 Sep 2020 08:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:subject:message-id:in-reply-to:from:to:cc:importance
 :mime-version:content-transfer-encoding;
 bh=1a4WiYaIgmzOIod6TO4GjxTcWFUr+9gJqOS70xBdw4E=;
 b=ARFqT93y3w8aBUyqkW+PjCN+DTNOx0M0g6FJJQgr/fjJ5R5zvUQZvAo9R6cFpGKn4c
 f8ZZXkFkeQ6Jmk5x62B4BZpEiHnqGuw54Dl9SJ1nYViI+rEDLtIYpzV6SbLmUB35Ow5h
 /W7GuCbC6exvF02Te7ISbf3fHCF/u8dgutkFRMt/M4w09gd2zHXND+RuBiuxBCcIJsfz
 8Zeyb8ni/mn7XxAQmlHhTm9M/AlVwa9mJcCPowJpSx96wpHXjSMnI23NL+RV2+UVb9XF
 bZtB25j02NeOCE8de1Zgho23ATRILP32HV/W2vtJptaFmKn+5mJV18YUy0v54gn8GPgc
 kmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:subject:message-id:in-reply-to:from
 :to:cc:importance:mime-version:content-transfer-encoding;
 bh=1a4WiYaIgmzOIod6TO4GjxTcWFUr+9gJqOS70xBdw4E=;
 b=ngj2EMP2nuC+Bo/MJkKN+bHPPVWlQgC/Fe9aiAAkNerl4aYn3Q2Trd50/euiRfVCGb
 AeDQwDROu+MRBGITdSdtDLnhRmz71SCdf1dkx6rZzQAeFtDJyFMwlgvYOjEaIliVQY0V
 GJKiJrarZyX/GIWLbGhraNjcA/iK+BrXz9BtUaXWUGHzGIEUKpuAO2a4pWdOsbX2ZgU8
 dU3nkO/9UPPsW4B4YfAwx5Djr9dsxMxhy7C4yyza8VILfq8dCHvmL1HZbfRuCF1Va7j2
 R1nks7wyhm627JjHxY0VmpOkkDG32QNmX4Qkrep/ai6j3FHfL8FsKlHCYDcRggdsJZlU
 xmfA==
X-Gm-Message-State: AOAM530zVi65uoPaUTIwGGWvCj4EsMvYohR7ZRlhxG+J2+8L/MxXf0Ff
 UHqcEOntfSKAJCwRA5FF0A==
X-Google-Smtp-Source: ABdhPJyafh9qQGNqYEFX899Fi504eiZOT6HYhbwhBAxpFFnZfmQ5K40CnsBX0wXtwcUsFBxyXKYkQw==
X-Received: by 2002:a9d:7459:: with SMTP id p25mr4170148otk.234.1599753258677; 
 Thu, 10 Sep 2020 08:54:18 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id k13sm993120ood.31.2020.09.10.08.54.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Sep 2020 08:54:17 -0700 (PDT)
Received: from [IPv6:2001:470:b8f6:1b:c885:b5ff:fe11:3289] (unknown
 [IPv6:2001:470:b8f6:1b:c885:b5ff:fe11:3289])
 by serve.minyard.net (Postfix) with ESMTPSA id 8BE4B181C2F;
 Thu, 10 Sep 2020 15:54:16 +0000 (UTC)
Date: Thu, 10 Sep 2020 10:54:15 -0500
Message-ID: <770c581d-751a-4621-a3af-f67ee71d83cc@email.android.com>
X-Android-Message-ID: <770c581d-751a-4621-a3af-f67ee71d83cc@email.android.com>
In-Reply-To: <1599736120.29234.12.camel@amazon.de>
From: minyard@acm.org
To: "Boehme, Markus" <markubo@amazon.de>
Importance: Normal
X-Priority: 3
X-MSMail-Priority: Normal
MIME-Version: 1.0
X-Spam-Score: 6.3 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.3 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 1.8 MISSING_MIMEOLE        Message has X-MSMail-Priority, but no X-MimeOLE
 0.6 HTML_MIME_NO_HTML_TAG  HTML-only message, but there is no HTML tag
X-Headers-End: 1kGOu0-002Duz-FU
Subject: Re: [Openipmi-developer] [PATCH 3/3] ipmi: Add timeout waiting for
 channel information
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
Cc: "Park, Seongjae" <sjpark@amazon.com>, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, "Nuernberger,
 Stefan" <snu@amazon.de>, openipmi-developer@lists.sourceforge.net, "Shah,
 Amit" <aams@amazon.de>
Content-Type: multipart/mixed; boundary="===============7089143247138206187=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

--===============7089143247138206187==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9J2F1dG8nPjxkaXY+PGJyPjxkaXY+PGJyPjxkaXYgY2xhc3M9ImVsaWRlZC10ZXh0
Ij5PbiBTZXAgMTAsIDIwMjAgNjowOCBBTSwgIkJvZWhtZSwgTWFya3VzIiAmbHQ7bWFya3Vib0Bh
bWF6b24uZGUmZ3Q7IHdyb3RlOjxiciB0eXBlPSJhdHRyaWJ1dGlvbiI+PGJsb2NrcXVvdGUgc3R5
bGU9Im1hcmdpbjowIDAgMCAwLjhleDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5n
LWxlZnQ6MWV4Ij48cCBkaXI9Imx0ciI+SGV5IENvcmV5LCB0aGFua3MgZm9yIHRha2luZyBhIGxv
b2shCjxicj4KCjxicj4KT24gTW9uLCAyMDIwLTA5LTA3IGF0IDE5OjM0IC0wNTAwLCBDb3JleSBN
aW55YXJkIHdyb3RlOgo8YnI+CiZndDsgT24gTW9uLCBTZXAgMDcsIDIwMjAgYXQgMDY6MjU6MzdQ
TSArMDIwMCwgTWFya3VzIEJvZWhtZSB3cm90ZToKPGJyPgomZ3Q7ICZndDsgCjxicj4KJmd0OyAm
Z3Q7IFdlIGhhdmUgb2JzZXJ2ZWQgaG9zdHMgd2l0aCBtaXNiZWhhdmluZyBCTUNzIHRoYXQgcmVj
ZWl2ZSBhIEdldCBDaGFubmVsCjxicj4KJmd0OyAmZ3Q7IEluZm8gY29tbWFuZCBidXQgZG9uJ3Qg
cmVzcG9uZC4gVGhpcyBsZWFkcyB0byBhbiBpbmRlZmluaXRlIHdhaXQgaW4gdGhlCjxicj4KJmd0
OyAmZ3Q7IGlwbWlfbXNnaGFuZGxlcidzIF9fc2Nhbl9jaGFubmVscyBmdW5jdGlvbiwgc2hvd2lu
ZyB1cCBhcyBodW5nIHRhc2sKPGJyPgomZ3Q7ICZndDsgbWVzc2FnZXMgZm9yIG1vZHByb2JlLgo8
YnI+CiZndDsgJmd0OyAKPGJyPgomZ3Q7ICZndDsgQWRkIGEgdGltZW91dCB3YWl0aW5nIGZvciB0
aGUgY2hhbm5lbCBzY2FuIHRvIGNvbXBsZXRlLiBJZiB0aGUgc2Nhbgo8YnI+CiZndDsgJmd0OyBm
YWlscyB0byBjb21wbGV0ZSB3aXRoaW4gdGhhdCB0aW1lLCB0cmVhdCB0aGF0IGxpa2UgSVBNSSAx
LjAgYW5kIG9ubHkKPGJyPgomZ3Q7ICZndDsgYXNzdW1lIHRoZSBwcmVzZW5jZSBvZiB0aGUgcHJp
bWFyeSBJUE1CIGNoYW5uZWwgYXQgY2hhbm5lbCBudW1iZXIgMC4KPGJyPgomZ3Q7IFsuLi5dCjxi
cj4KJmd0OyBXaGlsZSB0aGlua2luZyBhYm91dCB0aGlzLCBJIHJlYWxpemVkIGFuIGlzc3VlIHdp
dGggdGhlc2UgcGF0Y2hlcy4KPGJyPgomZ3Q7IFRoZXJlIHNob3VsZCBiZSB0aW1lcnMgaW4gdGhl
IGxvd2VyIGxheWVycyB0aGF0IGRldGVjdCB0aGF0IHRoZSBCTUMgZG9lcwo8YnI+CiZndDsgbm90
IHJlc3BvbmQgYW5kIHNob3VsZCByZXR1cm4gYW4gZXJyb3IgcmVzcG9uc2UuJm5ic3A7Jm5ic3A7
VGhpcyBpcyBzdXBwb3NlZCB0byBiZQo8YnI+CiZndDsgZ3VhcmFudGVlZCBieSB0aGUgbG93ZXIg
bGF5ZXIsIHlvdSBzaG91bGRuJ3QgbmVlZCB0aW1lcnMgaGVyZS4mbmJzcDsmbmJzcDtJbiBmYWN0
LAo8YnI+CiZndDsgaWYgeW91IGFib3J0IHdpdGggYSB0aW1lciBoZXJlLCB5b3Ugc2hvdWxkIGdl
dCBhIGxvd2VyIGxheWVyIHJlcG9uZHMKPGJyPgomZ3Q7IGxhdGVyLCBjYXVzaW5nIG90aGVyIGlz
c3Vlcy4KPGJyPgomZ3Q7IAo8YnI+CiZndDsgU28sIHRoaXMgaXMgd3JvbmcuJm5ic3A7Jm5ic3A7
SWYgeW91IGFyZSBuZXZlciBnZXR0aW5nIGEgcmVzcG9uc2UsIHRoZXJlIGlzIGEgYnVnCjxicj4K
Jmd0OyBpbiB0aGUgbG93ZXIgbGF5ZXIuJm5ic3A7Jm5ic3A7SWYgeW91IGFyZSBub3QgZ2V0dGlu
ZyB0aGUgZXJyb3IgcmVzcG9uc2UgYXMKPGJyPgomZ3Q7IHF1aWNrbHkgYXMgeW91IHdvdWxkIGxp
a2UsIEknbSBub3Qgc3VyZSB3aGF0IHRvIGRvIGFib3V0IHRoYXQuCjxicj4KJmd0OyAKPGJyPgoK
PGJyPgpJIHNlZS4gSSBtaWdodCBub3QgYmUgYWJsZSB0byBnZXQgaG9sZCBvZiBtb3JlIGhvc3Rz
IGJlaGF2aW5nIHRoaXMgd2F5LAo8YnI+CmJ1dCBpZiBJIGRvLCBJJ2xsIGRpZyBkZWVwZXIgaW50
byB3aHkgdGhlIGxvd2VyIGxheWVyIHRpbWVvdXRzIGRpZG4ndAo8YnI+CnNhdmUgdXMgaGVyZS4g
VGhhbmtzIGZvciB0aGUgcG9pbnRlci4KPGJyPgoKPC9wPjwvYmxvY2txdW90ZT48L2Rpdj48L2Rp
dj48L2Rpdj48ZGl2IGRpcj0iYXV0byI+PGJyPjwvZGl2PjxkaXYgZGlyPSJhdXRvIj5JIGNhbiBz
aW11bGF0ZSB0aGlzIGluIHFlbXUuJm5ic3A7IENhbiB5b3UgZ2l2ZSBhbiBleGFjdCBkZXNjcmlw
dGlvbiBvZiB0aGUgaGFyZHdhcmU/IElQTUkgaW50ZXJmYWNlIHR5cGUsIGludGVycnVwdHMsIHJl
Z2lzdGVyIGxheW91dC48L2Rpdj48ZGl2IGRpcj0iYXV0byI+PGJyPjwvZGl2PjxkaXYgZGlyPSJh
dXRvIj4tY29yZXk8L2Rpdj48ZGl2IGRpcj0iYXV0byI+PGRpdj48ZGl2IGNsYXNzPSJlbGlkZWQt
dGV4dCI+PGJsb2NrcXVvdGUgc3R5bGU9Im1hcmdpbjowIDAgMCAwLjhleDtib3JkZXItbGVmdDox
cHggI2NjYyBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij48cCBkaXI9Imx0ciI+PGJyPgoKPGJyPgoK
PGJyPgomZ3Q7ICZndDsgU2lnbmVkLW9mZi1ieTogU3RlZmFuIE51ZXJuYmVyZ2VyICZsdDtzbnVA
YW1hem9uLmNvbSZndDsKPGJyPgomZ3Q7ICZndDsgU2lnbmVkLW9mZi1ieTogTWFya3VzIEJvZWht
ZSAmbHQ7bWFya3Vib0BhbWF6b24uY29tJmd0Owo8YnI+CiZndDsgJmd0OyAtLS0KPGJyPgomZ3Q7
ICZndDsgJm5ic3A7ZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMgfCA3MiArKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCjxicj4KJmd0OyAmZ3Q7ICZuYnNwOzEg
ZmlsZSBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkKPGJyPgomZ3Q7
ICZndDsgCjxicj4KJmd0OyAmZ3Q7IGRpZmYgLS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1p
X21zZ2hhbmRsZXIuYyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jCjxicj4K
Jmd0OyAmZ3Q7IGluZGV4IDJhMmU4YjIuLjlkZTliYTYgMTAwNjQ0Cjxicj4KJmd0OyAmZ3Q7IC0t
LSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jCjxicj4KJmd0OyAmZ3Q7ICsr
KyBiL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFuZGxlci5jCjxicj4KJmd0OyAmZ3Q7IEBA
IC0zMzE1LDQ2ICszMzE1LDUyIEBAIGNoYW5uZWxfaGFuZGxlcihzdHJ1Y3QgaXBtaV9zbWkgKmlu
dGYsIHN0cnVjdCBpcG1pX3JlY3ZfbXNnICptc2cpCjxicj4KJmd0OyAmZ3Q7ICZuYnNwOyAqLwo8
YnI+CiZndDsgJmd0OyAmbmJzcDtzdGF0aWMgaW50IF9fc2Nhbl9jaGFubmVscyhzdHJ1Y3QgaXBt
aV9zbWkgKmludGYsIHN0cnVjdCBpcG1pX2RldmljZV9pZCAqaWQpCjxicj4KJmd0OyAmZ3Q7ICZu
YnNwO3sKPGJyPgomZ3Q7ICZndDsgLSZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwO2ludCBy
djsKPGJyPgomZ3Q7ICZndDsgKyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwO2xvbmcgcnY7
Cjxicj4KJmd0OyAmZ3Q7ICsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDt1bnNpZ25lZCBp
bnQgc2V0Owo8YnI+CiZndDsgJmd0OyAKPGJyPgomZ3Q7ICZndDsgLSZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwO2lmIChpcG1pX3ZlcnNpb25fbWFqb3IoaWQpICZndDsgMQo8YnI+CiZndDsg
Jmd0OyAtJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7fHwgKGlwbWlfdmVyc2lvbl9tYWpvcihpZCkgPT0gMQo8YnI+CiZn
dDsgJmd0OyAtJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7JmFtcDsmYW1wOyBp
cG1pX3ZlcnNpb25fbWlub3IoaWQpICZndDs9IDUpKSB7Cjxicj4KJmd0OyAmZ3Q7IC0mbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDt1bnNpZ25lZCBpbnQgc2V0Owo8YnI+CiZndDsgJmd0OyArJm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7aWYgKGlwbWlfdmVyc2lvbl9tYWpvcihpZCkgPT0gMSAmYW1w
OyZhbXA7IGlwbWlfdmVyc2lvbl9taW5vcihpZCkgJmx0OyA1KSB7Cjxicj4KJmd0OyBUaGlzIGlz
IGluY29ycmVjdCwgaXQgd2lsbCBub3QgY29ycmVjdGx5IGhhbmRsZSBJUE1JIDAueCBCTUNzLiZu
YnNwOyZuYnNwO1llcywKPGJyPgomZ3Q7IHRoZXkgZXhpc3QuCjxicj4KCjxicj4KSW50ZXJlc3Rp
bmchIEkgd2Fzbid0IGF3YXJlIG9mIHRob3NlLiBTZWFyY2hpbmcgdGhlIHdlYiBkb2Vzbid0IHR1
cm4gdXAKPGJyPgptdWNoIGFuZCB0aGUgc3BlYyBkb2Vzbid0IG1lbnRpb24gdGhlbSBlaXRoZXIu
IEFyZSB0aGVzZSBwcmUtcmVsZWFzZQo8YnI+CmltcGxlbWVudGF0aW9ucyBvZiB0aGUgSVBNSSAx
LjAgc3BlYyBvciBzb21lIGtpbmQgb2YgIklQTUkgbGlnaHQiPwo8YnI+Cgo8YnI+Ck1hcmt1czxi
cj48YnI+PC9wPgo8cCBkaXI9Imx0ciI+QW1hem9uIERldmVsb3BtZW50IENlbnRlciBHZXJtYW55
IEdtYkg8YnI+CktyYXVzZW5zdHIuIDM4PGJyPgoxMDExNyBCZXJsaW48YnI+Ckdlc2NoYWVmdHNm
dWVocnVuZzogQ2hyaXN0aWFuIFNjaGxhZWdlciwgSm9uYXRoYW4gV2Vpc3M8YnI+CkVpbmdldHJh
Z2VuIGFtIEFtdHNnZXJpY2h0IENoYXJsb3R0ZW5idXJnIHVudGVyIEhSQiAxNDkxNzMgQjxicj4K
U2l0ejogQmVybGluPGJyPgpVc3QtSUQ6IERFIDI4OSAyMzcgODc5PGJyPjwvcD4KPC9ibG9ja3F1
b3RlPjwvZGl2Pjxicj48L2Rpdj48L2Rpdj48L2Rpdj4=



--===============7089143247138206187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7089143247138206187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============7089143247138206187==--
