Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 199C0CE6A17
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Dec 2025 13:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6keUOGQ5Jtg3uYKWF3l+PH/DJSdHzuJMjzDNEWmaLsU=; b=N25PnM+953D8Cx6Wg45hiakp7R
	cVm0LDDM53PMKG6XGv+QdeXb/OatO+9DeWwlh2bc85eLymgLI5aHpQX9maUqtZzq9UkidW6T4DprB
	hJiwcmj0L7Ka8Iq9Qgp7zrPARhaXehMFRJ46YXCtyfg1x6zBvdCbxmkT3uGb7AOHtZjw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vaC0W-00032S-Hn;
	Mon, 29 Dec 2025 12:05:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michallinuxstuff@gmail.com>) id 1vaC06-00030H-VI
 for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 12:05:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NF/8+LLEMrQr++o1vIYb6mNzL0DOwHQ2rJjBnTBQPvU=; b=WQrDg3fpUzC7tJAdMtDh+mDAcX
 uFmnvwB4IU+MZERvP71mXQuLEt4Zcw0tsBv/0dl0Fvlat4umo4qLSZEonXbW9f7vGh/VTQHh1bL2y
 6dpMjNkYBmZNsBDqV1TICfPFHKhxP/7xm1JI/L/5/RRN1fBbVjEYI1jOH9zKeBFRWCBU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NF/8+LLEMrQr++o1vIYb6mNzL0DOwHQ2rJjBnTBQPvU=; b=Zql7Zt/GhEbuq6+SmcAGyCgG1Z
 DcCajz5LiIyU5khfRZkhkjaHtg8pNp583fIRKxtJ5YRTCHYErXrZM08ChfLYy9K2+r6GKKyRf/Lnh
 EM0Ns7CZ9DzWSymNdZEME3pyimotLH2nnotmc6MnoNPSS5trXdg57FWd8QWJNlwqAln0=;
Received: from mail-ej1-f51.google.com ([209.85.218.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vaC07-0007yc-5W for openipmi-developer@lists.sourceforge.net;
 Mon, 29 Dec 2025 12:05:27 +0000
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-b736d883ac4so1520341466b.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 29 Dec 2025 04:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767009921; x=1767614721; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NF/8+LLEMrQr++o1vIYb6mNzL0DOwHQ2rJjBnTBQPvU=;
 b=G+0n+zQHGMkFWzoLttcDVDN789lL9P7XGxjajD1Jepuaerv0fmWRqt3gF+rVAFRX+H
 TcvFJim0FaA58ozdd6oSX1T3Ln0RHUuCt1Va+zyHtTN8q89/fifaKlvChKKnQjFuJyrG
 kF7srCs0sQ6TURUM9HeMJ7I9lk4ss3CHZde+3JLGmpGzvE/7WVtcbzrUi5z05g7juBRk
 mU6GkWGGck205m07c+hlqHMH3iYbZ5OsKTlvt6sLn76Tc+GDXQo0vgi4HpmUPDIv9WlB
 YHRjuWvTBHYD/Bs8+mS/N2AmdMnOWNfbIWG27k8Pq/LF8mUgfZmxcpgLXhj0Ej/vY6BQ
 b8xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767009921; x=1767614721;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NF/8+LLEMrQr++o1vIYb6mNzL0DOwHQ2rJjBnTBQPvU=;
 b=pUBCkO4Iko6V/rdBjrT0k4XVsLOrbeakVZFJQhX/tD0GaryHL2y772hb4AqwQAAaGC
 X5F/ronIQMf3JelClZgY3vwr7ptBUEEhG2YW3oaNJSFOpkK5FwP/6aLYN0IyzEQal96J
 ni4L4GJ8ecRCOkZVtDCBvYJkwyT2i9X59rL5b9gjfaIPPO+61DZ/FQYuO5jlLpwPpRy7
 JzR1ubCh5kiMBxCYPiHkCGFZifd/6+pBmoT6wBI49PDoYS1DQRuKTzuBVOKo6k75LNPe
 aX6c4qEZj9+uMuyMx3BzKw/9iNY5EEsIwugb1GY2v2dDDMkeWagkAhxBN70Ell9B8K2u
 kD0g==
X-Gm-Message-State: AOJu0YxkrCkA1oH0bcwyx3TrG4M9T8nexVvxvM5+WbYPQKE7VpUnkKlT
 gV36OfTESUUTwDp1AUwroyj151tPlN6cgQ1OZPuQudUatRXmdRoyrbaOnHoPFK/kBtNZbavQfUJ
 Plu6Ibg+GCgqu9wP+8ESk/VBW7yOkad4=
X-Gm-Gg: AY/fxX4uoT3DNg/Tf8nUZUbrxQHSj0ER52yMX65a4wfg9DM1ec3DvKATIVETC222DNk
 YYSf6GMHjBMDBWDmgZ0JnIYwOahlTenWRYdyVKnntPUpUj06Se429y+ZQSYSVM7YsuyDjjjeT6t
 5ZpLIFAA6khabiVlJq1Ly7VkqHTZPGbA4vlOGaAOoY+j5M6sAcjeFvJSsNkYOioZCGoLucUBVCq
 130skwAV/mksiACSNm8LJt/l20IzSQp9TUDrQNSY8TAfrAWjH1BBEU7uFJDi/PmFkloDg==
X-Google-Smtp-Source: AGHT+IGwVhSrRSeyzqcF/VEwtitbfxakmi1F0pW7RSFiVbkd6jYc1Pf6j6cdnx4ya6pUbj+73fDm74Btjh22fdq7SEM=
X-Received: by 2002:a17:907:2da0:b0:b73:5958:7e6c with SMTP id
 a640c23a62f3a-b8036f0add4mr3427199666b.3.1767009916259; Mon, 29 Dec 2025
 04:05:16 -0800 (PST)
MIME-Version: 1.0
References: <CACosJgzCym0fGOh4_itgnV5Dk+vOqk=Xy+dtvbmCGcpKCFY5XA@mail.gmail.com>
 <aVHKTMfSgFnBzkyA@mail.minyard.net>
In-Reply-To: <aVHKTMfSgFnBzkyA@mail.minyard.net>
From: Michal Berger <michallinuxstuff@gmail.com>
Date: Mon, 29 Dec 2025 13:05:04 +0100
X-Gm-Features: AQt7F2qkUQFr7_qo9oaUVvuWQdzfR1KRr0nt1oDxfyccseW6ExgpFksZFWtoGYc
Message-ID: <CACosJgxWRTCATq=8kd7s2JSOjn1qL5B4KFYtzPAmVj55Xc689w@mail.gmail.com>
To: corey@minyard.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  >First your mailer is munging up the patches pretty badly.
 I have to >hand apply them, which is a big pain. Ah, apologies, I didn't
 check the formatting before I sent these emails (was rushing a bit, won't
 happen again). 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [michallinuxstuff(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.51 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vaC07-0007yc-5W
Subject: Re: [Openipmi-developer] [PATCH] lanserv/bmc_sensor: Adjust
 Generator ID
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

PkZpcnN0IHlvdXIgbWFpbGVyIGlzIG11bmdpbmcgdXAgdGhlIHBhdGNoZXMgcHJldHR5IGJhZGx5
LiAgSSBoYXZlIHRvCj5oYW5kIGFwcGx5IHRoZW0sIHdoaWNoIGlzIGEgYmlnIHBhaW4uCgpBaCwg
YXBvbG9naWVzLCBJIGRpZG4ndCBjaGVjayB0aGUgZm9ybWF0dGluZyBiZWZvcmUgSSBzZW50IHRo
ZXNlCmVtYWlscyAod2FzIHJ1c2hpbmcgYSBiaXQsIHdvbid0IGhhcHBlbiBhZ2FpbikuCgo+IElm
IHlvdSBjb3VsZCBjaGVjayBpdCwgdGhhdCB3b3VsZCBiZSBncmVhdC4KVGVzdGVkLCBldmVyeXRo
aW5nIHNlZW1zIHRvIGJlIHdvcmtpbmcgZmluZS4gVGhhdCBzYWlkLCB0aGVyZSdzIG9uZQp0aW55
IHRoaW5nIEkgYW0gYSBiaXQgdG9ybiBhYm91dDoKCnNlbF9kYXRhWzRdID0gbXNnLT5zYWRkciAm
IDB4N2Y7CgpGb3IgdGhlIGNhc2Ugd2hlcmUgdGhlIGV2ZW50IGlzIG5vdCByZWNlaXZlZCBvdmVy
IHRoZSBzeXN0ZW0KaW50ZXJmYWNlLCBlLmcuLCBMQU4gY2hhbm5lbCwgdGhlIG1zZy0+c2FkZHIg
aXMgc2V0IHRvIDB4ODEuIFNvIHRoZQphYm92ZQpzZXRzIHRoZSBCeXRlIDEgb2YgdGhlIGdlbmVy
YXRvciBJRCB0byAxLiBXaXRoIDB4MSBMQU4gY2hhbm5lbCwgd2UgZW5kCnVwIHdpdGggMHgxMDAx
IGFzIHRoZSBnZW5lcmF0b3IgSUQgZm9yIHRoYXQgZXZlbnQuIFNvIHRoYXQKaW5kaWNhdGVzIHRo
ZSBnZW5lcmF0b3IgaG9sZHMgYW4gYWN0dWFsIFNXSUQgb2YgdmFsdWUgMHgwLiBJZiB3ZQpjcm9z
cy1yZWZlcmVuY2UgdGhhdCB3aXRoIHRoZSBUYWJsZSA1LTQsIFN5c3RlbSBTb2Z0d2FyZSBJRHMg
aXQKZXNzZW50aWFsbHkgc2F5cyAiQklPUyBnZW5lcmF0ZWQgdGhpcyBtZXNzYWdlIiB3aGljaCBz
b3VuZHMgYSBiaXQgb2RkLgpJbml0aWFsbHksIGhhdmluZyAweDEwMDAgbWFkZSBzb21ld2hhdCBt
b3JlIHNlbnNlIHRvIG1lCmFzIHRoZSB3YXkgSSByZWFkIHRoaXMgd2FzICJubyBzd2lkLCB0aGUg
aTJjIGFkZHJlc3MgaXMgMGggYnV0IHRoZQpjaGFubmVsIG51bWJlciBpcyAhPSAwaCAtIHRoaXMg
aXMgZGVmaW5pdGVseSBub3QgYSBzeXN0ZW0gc29mdHdhcmUKZXZlbnQsIGJ1dCBvbmUgd2hpY2gg
c3RpbGwgZml0cyB1bmRlciBJUE1CIG1lc3NhZ2luZyB1bWJyZWxsYSAoaS5lLgpMQU4sIGFzIHBl
ciBUYWJsZSAyOS00LCBQbGF0Zm9ybSBFdmVudCAoRXZlbnQgTWVzc2FnZSkgQ29tbWFuZCkiLgoK
VGhhdCBzYWlkLCBJIGRvbid0IGZlZWwgdmVyeSBzdHJvbmdseSBhYm91dCBpdCwgSSBhbSBqdXN0
IG1vcmUgY3VyaW91cwp3aGF0IHRoZSAicmlnaHQiIGludGVycHJldGF0aW9uIG9mIHRoZSBzcGVj
IHNob3VsZCBiZSBoZXJlLgpSZWdhcmRsZXNzLCBjb2RlIExHVE0uIDopCgpSZWdhcmRzLApNaWNo
YWwKCnBvbi4sIDI5IGdydSAyMDI1IG8gMDE6MjQgQ29yZXkgTWlueWFyZCA8Y29yZXlAbWlueWFy
ZC5uZXQ+IG5hcGlzYcWCKGEpOgo+Cj4gT24gU3VuLCBEZWMgMjgsIDIwMjUgYXQgMTA6Mzg6MDNQ
TSArMDEwMCwgTWljaGFsIEJlcmdlciB3cm90ZToKPiA+IFJpZ2h0IG5vdyBjaGFubmVsIG51bWJl
ciBpcyBiZWluZyB1bmNvbmRpdGlvbmFsbHkgaW5jbHVkZWQgaW4gdGhlCj4gPiBHZW5lcmF0b3Ig
SUQgZmllbGQuIEhvd2V2ZXIsIGFzIHBlciB0aGUgU0VMIEV2ZW50IFJlY29yZHMgaXQgc2hvdWxk
Cj4gPiByZW1haW4gMGggZGVwZW5kaW5nIG9uIHdoYXQgbWVkaXVtL2ludGVyZmFjZSB0aGUgZXZl
bnQgbXNnIGlzCj4gPiByZWNlaXZlZCBvdmVyLgo+Cj4gWW91IGFyZSBjb3JyZWN0LCB0aGVyZSB3
YXMgYSBsb3QgdG8gYmUgZGVzaXJlZCBpbiB0aGlzIGZ1bmNpdG9uLgo+Cj4gVGhlcmUgd2VyZSwg
dW5mb3J0dW5hdGVseSwgYSBsb3Qgb2YgaXNzdWVzIHdpdGggdGhpcyBwYXRjaC4KPgo+IEZpcnN0
IHlvdXIgbWFpbGVyIGlzIG11bmdpbmcgdXAgdGhlIHBhdGNoZXMgcHJldHR5IGJhZGx5LiAgSSBo
YXZlIHRvCj4gaGFuZCBhcHBseSB0aGVtLCB3aGljaCBpcyBhIGJpZyBwYWluLgo+Cj4gT24gdGhl
IGNoYWduZSBpdHNlbGYsIHlvdSBzdGlsbCB3ZXJlbid0IGhhbmRsaW5nIGFsbCBjYXNlcyBmb3Ig
dGhlCj4gYWRkcmVzcyBpbiB0aGUgU0VMIEV2ZW50IFJlY29yZHMuCj4KPiBBbmQgZm9yIGFuIElQ
TUIgbWVzc2FnZXMsIHRoZSB3cm9uZyBkYXRhIHdhcyBjb3BpZWQgYW5kIGl0IHdhcyBpbmRleGlu
Zwo+IGJleW9uZCB0aGUgZW5kIG9mIHRoZSBtZXNzYWdlIGRhdGEgd2hlbiBmaWxsaW5nIG91dCB0
aGUgZGF0YS4KPgo+IEkndmUgaGVhdmlseSBtb2RpZmllZCB0aGUgcGF0Y2ggYW5kIHB1c2hlZCBp
dCB1cC4gIElmIHlvdSBjb3VsZCBjaGVjawo+IGl0LCB0aGF0IHdvdWxkIGJlIGdyZWF0Lgo+Cj4g
VGhhbmtzLAo+Cj4gLWNvcmV5Cj4KPiA+Cj4gPiBTbyBoYXZlIHRoaXM6Cj4gPgo+ID4gIyBpcG1p
dG9vbCBzZWwgbGlzdAo+ID4gIFNFTCBoYXMgbm8gZW50cmllcwo+ID4gICMgaXBtaXRvb2wgZXZl
bnQgMQo+ID4gIFNlbmRpbmcgU0FNUExFIGV2ZW50OiBUZW1wZXJhdHVyZSAtIFVwcGVyIENyaXRp
Y2FsIC0gR29pbmcgSGlnaAo+ID4gICMgaXBtaXRvb2wgc2VsIGdldCAweDEgfCBncmVwICJHZW5l
cmF0b3IgSUQiCj4gPiAgIEdlbmVyYXRvciBJRCAgICAgICAgICA6IDAwNDEKPiA+Cj4gPiBJbnN0
ZWFkIG9mOgo+ID4KPiA+ICAjIGlwbWl0b29sIGV2ZW50IDEKPiA+ICBTZW5kaW5nIFNBTVBMRSBl
dmVudDogVGVtcGVyYXR1cmUgLSBVcHBlciBDcml0aWNhbCAtIEdvaW5nIEhpZ2gKPiA+ICAjIGlw
bWl0b29sIHNlbCBnZXQgMHgyIHwgZ3JlcCAiR2VuZXJhdG9yIElEIgo+ID4gICBHZW5lcmF0b3Ig
SUQgICAgICAgICAgOiBmMDQxCj4gPgo+ID4gQXMgd2UgYXJlIGF0IGl0IGFkanVzdCB0aGUgbXNn
IGxlbmd0aCBvZiB0aGUgcGxhdGZvcm0gZXZlbnQgLSBhcyBwZXIgdGhlCj4gPiBUYWJsZSAyOS00
LCBQbGF0Zm9ybSBFdmVudCAoRXZlbnQgTWVzc2FnZSkgQ29tbWFuZCwgdGhlIDggYnl0ZXMgaXMK
PiA+IGEgbXNnIGxlbmd0aCBkZWRpY2F0ZWQgZm9yIHRoZSBTeXN0ZW0gSW50ZXJmYWNlIHdoaWNo
IG11c3QgaW5jbHVkZQo+ID4gdGhlIEdlbmVyYXRvciBJRC4gQ2FzZSBpbiBwb2ludCwgd2hlbiB0
aGUgZXZlbnQgaXMgc2VudCBvdmVyIHRoZQo+ID4gTEFOIGNoYW5uZWwsIGlwbWlfc2ltIHJlamVj
dHMgaXQgZHVlIHRvIGludmFsaWQgbGVuZ3RoIG9mIHRoZQo+ID4gcmVxdWVzdCAoZS5nLiBpcG1p
dG9vbCBkb2VzIG5vdCBpbmNsdWRlIHRoZSBleHRyYSBzb2Z0d2FyZSBJRCBpbiB0aGUKPiA+IGV2
ZW50IGRhdGEgaGVuY2Ugc2VuZGluZyBvbmx5IDcgYnl0ZXMpOgo+ID4KPiA+ICAkIGlwbWl0b29s
IC1JbGFucGx1cyAtSGxvY2FsaG9zdCAtcDQyNDIgLVVYWFhYWCAtUFhYWFhYIGV2ZW50IDEKPiA+
ICBTZW5kaW5nIFNBTVBMRSBldmVudDogVGVtcGVyYXR1cmUgLSBVcHBlciBDcml0aWNhbCAtIEdv
aW5nIEhpZ2gKPiA+ICBQbGF0Zm9ybSBFdmVudCBNZXNzYWdlIGNvbW1hbmQgZmFpbGVkOiBSZXF1
ZXN0IGRhdGEgbGVuZ3RoIGludmFsaWQKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgQmVy
Z2VyIDxtaWNoYWxsaW51eHN0dWZmQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gbGFuc2Vydi9ibWNf
c2Vuc29yLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKystCj4gPiAxIGZpbGUgY2hhbmdlZCwg
MjEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9sYW5z
ZXJ2L2JtY19zZW5zb3IuYyBiL2xhbnNlcnYvYm1jX3NlbnNvci5jCj4gPiBpbmRleCBiZTZjNTM3
Zi4uY2MyMWJmOWMgMTAwNjQ0Cj4gPiAtLS0gYS9sYW5zZXJ2L2JtY19zZW5zb3IuYwo+ID4gKysr
IGIvbGFuc2Vydi9ibWNfc2Vuc29yLmMKPiA+IEBAIC01OCw2ICs1OCw3IEBACj4gPiAjaW5jbHVk
ZSA8c3lzL3N0YXQuaD4KPiA+ICNpbmNsdWRlIDxmY250bC5oPgo+ID4KPiA+ICsjaW5jbHVkZSA8
T3BlbklQTUkvaXBtaV9tYy5oPgo+ID4gI2luY2x1ZGUgPE9wZW5JUE1JL2lwbWlfZXJyLmg+Cj4g
PiAjaW5jbHVkZSA8T3BlbklQTUkvaXBtaV9tc2diaXRzLmg+Cj4gPiAjaW5jbHVkZSA8T3BlbklQ
TUkvaXBtaV9iaXRzLmg+Cj4gPiBAQCAtMTEzLDE2ICsxMTQsMzUgQEAgaGFuZGxlX3BsYXRmb3Jt
X2V2ZW50KGxtY19kYXRhX3QgICAgKm1jLAo+ID4gICAgICAgICAgICAgICAgICAgICAgdm9pZCAg
ICAgICAgICAqY2JfZGF0YSkKPiA+IHsKPiA+ICAgICB1bnNpZ25lZCBjaGFyIHNlbF9kYXRhWzEz
XTsKPiA+ICsgICAgdWludDhfdCBtc2dfbGVuZ3RoID0gNzsgLy8gSVBNQiBNRVNTQUdJTkcKPiA+
Cj4gPiAtICAgIGlmIChjaGVja19tc2dfbGVuZ3RoKG1zZywgOCwgcmRhdGEsIHJkYXRhX2xlbikp
Cj4gPiArICAgIGlmIChtc2ctPm9yaWdfY2hhbm5lbC0+Y2hhbm5lbF9udW0gPT0gMTUgfHwKPiA+
ICsgICAgICAgICAgICAgICBtc2ctPm9yaWdfY2hhbm5lbC0+bWVkaXVtX3R5cGUgPT0gSVBNSV9D
SEFOTkVMX01FRElVTV9TWVNfSU5URikKPiA+ICsgICAgICAgbXNnX2xlbmd0aCA9IDg7IC8vIFNZ
U1RFTSBJTlRFUkZBQ0UgTUVTU0FHSU5HCj4gPiArCj4gPiArICAgIGlmIChjaGVja19tc2dfbGVu
Z3RoKG1zZywgbXNnX2xlbmd0aCwgcmRhdGEsIHJkYXRhX2xlbikpCj4gPiAgICAgICAgcmV0dXJu
Owo+ID4KPiA+ICAgICBzZWxfZGF0YVswXSA9IDA7Cj4gPiAgICAgc2VsX2RhdGFbMV0gPSAwOwo+
ID4gICAgIHNlbF9kYXRhWzJdID0gMDsKPiA+ICAgICBzZWxfZGF0YVszXSA9IDA7Cj4gPiArICAg
IC8qCj4gPiArICAgICAgIEZyb20gVGFibGUgMzItMSwgU0VMIEV2ZW50IFJlY29yZHM6Cj4gPiAr
ICAgICAgICAgQnl0ZSAxCj4gPiArICAgICAgICAgICBbNzoxXSAtIDctYml0IEkyQyAuIFNsYXZl
IEFkZHJlc3MsIG9yIDctYml0IHN5c3RlbSBzb2Z0d2FyZSBJRAo+ID4gKyAgICAgICAgICAgWzBd
IDBiID0gSUQgaXMgSVBNQiBTbGF2ZSBBZGRyZXNzCj4gPiArICAgICAgICAgICAgICAgMWIgPSBz
eXN0ZW0gc29mdHdhcmUgSUQKPiA+ICsgICAgICAgICBCeXRlIDIKPiA+ICsgICAgICAgICAgWzc6
NF0gLSBDaGFubmVsIG51bWJlci4gQ2hhbm5lbCB0aGF0IGV2ZW50IG1lc3NhZ2Ugd2FzCj4gPiBy
ZWNlaXZlZCBvdmVyLiAwaCBpZiB0aGUKPiA+ICsgICAgICAgICAgICAgICAgICBldmVudCBtZXNz
YWdlIHdhcyByZWNlaXZlZCB2aWEgdGhlIHN5c3RlbQo+ID4gaW50ZXJmYWNlLCBwcmltYXJ5IElQ
TUIsIG9yCj4gPiArICAgICAgICAgICAgICAgICAgaW50ZXJuYWxseSBnZW5lcmF0ZWQgYnkgdGhl
IEJNQy4KPiA+ICsgICAgKi8KPiA+ICAgICBzZWxfZGF0YVs0XSA9IG1zZy0+ZGF0YVswXTsKPiA+
ICAgICBzZWxfZGF0YVs1XSA9IG1zZy0+b3JpZ19jaGFubmVsLT5jaGFubmVsX251bSA8PCA0Owo+
ID4gKyAgICBpZiAobXNnLT5vcmlnX2NoYW5uZWwtPmNoYW5uZWxfbnVtID09IDE1IHx8Cj4gPiAr
ICAgICAgICAgICAgICAgbXNnLT5vcmlnX2NoYW5uZWwtPm1lZGl1bV90eXBlID09IElQTUlfQ0hB
Tk5FTF9NRURJVU1fU1lTX0lOVEYpCj4gPiArICAgICAgIHNlbF9kYXRhWzVdID0gMDsKPiA+ICAg
ICBzZWxfZGF0YVs2XSA9IG1zZy0+ZGF0YVsxXTsKPiA+ICAgICBzZWxfZGF0YVs3XSA9IG1zZy0+
ZGF0YVsyXTsKPiA+ICAgICBzZWxfZGF0YVs4XSA9IG1zZy0+ZGF0YVszXTsKPiA+IC0tCj4gPiAy
LjQzLjAKPiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiA+IE9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKPiA+IE9wZW5pcG1p
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiA+IGh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3BlcgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9w
ZXIK
