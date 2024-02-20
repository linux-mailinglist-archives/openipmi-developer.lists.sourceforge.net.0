Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC9085C4E4
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Feb 2024 20:33:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rcVro-0002Em-Ep;
	Tue, 20 Feb 2024 19:33:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1rcVrn-0002Eg-0R
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Feb 2024 19:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hS/yuuA0H0X0W3262oNsyvTh2OxC1cjSVmh94D2fzDk=; b=IQpjjidMD16IsuR1idLLcDq1uS
 gPfMYvcdKJl9fSZHM8NTybXXDSb/VbLDR1pFv8TSKyxObz1CrtcDigYMmqd96lt/PMhMSIoszx+M5
 0aUUChkMHnNZ7/U2OOaI/UukZGiLtt/sNh7iWC2sGKUl71+7ncXfJts7vuS8wTrUkl5Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hS/yuuA0H0X0W3262oNsyvTh2OxC1cjSVmh94D2fzDk=; b=Cuah+ZmmiE/MlDaa9RbozdTeeW
 9KfjbjID8wAssS4AgxYJ3YuoPafnIRRYi5v5q3u8KzjQaEU3TVDi3S017GT9SzpB5B8xlNIznY/Z4
 5dXAi7nKolIKt7NZXPRjpxORM9j33zEETly2xlRnVs9DggjqPr4mcg1qBclGwjIgMfKE=;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rcVrk-00015L-TP for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Feb 2024 19:33:22 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 46e09a7af769-6e2da00185dso3199554a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 20 Feb 2024 11:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708457596; x=1709062396; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=hS/yuuA0H0X0W3262oNsyvTh2OxC1cjSVmh94D2fzDk=;
 b=Pg9OVfR3jKCsClIcWLnTonQvi9gzbARt4vmN5pbGqoNONWLK4xkUxQ41/RT9NLi+s9
 g3PefwXZ2pZoxrZNzpFvj74PTDKFa5deitwomj4OKH9pw3Ma1DHQsHtDmlpldvXwW2st
 i8aJgjEEKC8peRtnTK0yQ8ZoBC+DXc59iIoaADtE33nJrGk6KambB8s8tp5JFqSTzvDq
 ai1U3qTrqDCA+FKJUe2EA+PA1yAaqyo2jBAH8KlASgBeJ7yK5sdMXkpFd+8QnBfyUVtg
 E1v0pp3jiJB1Ox5igjJogseIpeeEK8Er2FYyX81ZRUtiMn06z31yRqSk2Wrx+wU5g3OP
 PHVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708457596; x=1709062396;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hS/yuuA0H0X0W3262oNsyvTh2OxC1cjSVmh94D2fzDk=;
 b=IrBq6Fb6u4VUnB2pcZraTPTSAGtm3Uek6p9gleqYAgr9F5rK/27zpwR8KGWxOL1IK1
 TXgzYgmfe3tyMFYLHIP/Vf0Lu8cUzhCrtYfNjpq6ZTR50klqLhSkWcpokWjhcl4jPJFx
 Kc+MwkoqHYXE44nffGt8QMIlPWWYv0W0tt3s8Ems4aVpw2b90CxsgmTS02mOz/iZ7SSX
 1pqBNSCEcQ2TsY4LCRxu1i4mCD9KptNrm3UQqf6cDdzcvtH6hvHpgcTKqIOPmITbF3fn
 oJeTXBDeLtOVGQOVkodLw1mhXt9WDg5l/9hxeRg7t0lBU2meLcb6aGhR9VqsptTv+bcK
 NApw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVDuO3Dl9kWojyu3RkpwPPH3kU/zPHpsBcU9VnHQuJKNzmEJ81BBAqBB8qrQcW8NTAtgJeiyYcsD1bAZVIJ7bE6DqNfZ/8Iv0JWTRW6ib9a7+TiZAlUKpQx
X-Gm-Message-State: AOJu0Yxl58TBqrH/EHixrOpFMjc8cXUOiVWVKeqiM01xKhsb/hHWfuEs
 DBlqJTCMAXoVX5s+N+Fdpaj2lGsB4JSbZplxpg7HiVvx9kmBWZlaVkKLbkU=
X-Google-Smtp-Source: AGHT+IG0hvt7fjbOEHQV8Nc2TWDmcMMjAJb0h6TKL9fNKwRKKCsDYjVbD6Wcn8GBqzXJtVr8GhRs5Q==
X-Received: by 2002:a05:6830:3d0d:b0:6e1:43a4:c412 with SMTP id
 eu13-20020a0568303d0d00b006e143a4c412mr15820908otb.32.1708457596316; 
 Tue, 20 Feb 2024 11:33:16 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 j19-20020a9d7d93000000b006e2e7cb1da2sm1346756otn.66.2024.02.20.11.33.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Feb 2024 11:33:15 -0800 (PST)
Received: from mail.minyard.net (unknown [172.59.123.64])
 by serve.minyard.net (Postfix) with ESMTPSA id A27C61800BF;
 Tue, 20 Feb 2024 19:33:14 +0000 (UTC)
Date: Tue, 20 Feb 2024 13:33:13 -0600
From: Corey Minyard <minyard@acm.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <ZdT+eThnYqb3iawF@mail.minyard.net>
References: <20240220123615.963916-1-geissonator@gmail.com>
 <a9169894-6972-49c0-a1d4-d80863f5b511@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a9169894-6972-49c0-a1d4-d80863f5b511@molgen.mpg.de>
X-Spam-Score: 4.0 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Feb 20, 2024 at 04:51:21PM +0100, Paul Menzel wrote:
 > Dear Andrew, > > > Thank you for your patch. Some style suggestions. >
 > Am 20.02.24 um 13:36 schrieb Andrew Geissler: > > From: Andrew G [...] 
 Content analysis details:   (4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [172.59.123.64 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.45 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rcVrk-00015L-TP
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: Update OBF poll timeout
 to reduce latency
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
Reply-To: minyard@acm.org
Cc: linux-aspeed@lists.ozlabs.org, Andrew Geissler <geissonator@gmail.com>,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 Andrew Geissler <geissonator@yahoo.com>, openbmc@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBGZWIgMjAsIDIwMjQgYXQgMDQ6NTE6MjFQTSArMDEwMCwgUGF1bCBNZW56ZWwgd3Jv
dGU6Cj4gRGVhciBBbmRyZXcsCj4gCj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLiBTb21l
IHN0eWxlIHN1Z2dlc3Rpb25zLgo+IAo+IEFtIDIwLjAyLjI0IHVtIDEzOjM2IHNjaHJpZWIgQW5k
cmV3IEdlaXNzbGVyOgo+ID4gRnJvbTogQW5kcmV3IEdlaXNzbGVyIDxnZWlzc29uYXRvckB5YWhv
by5jb20+Cj4gCj4gKE9oIG5vLCBZYWhvby4gKGlnbm9yZSkpCj4gCj4gWW91IGNvdWxkIGJlIG1v
cmUgc3BlY2lmaWMgaW4gdGhlIGdpdCBjb21taXQgbWVzc2FnZSBieSB1c2luZyAqRG91YmxlKjoK
PiAKPiA+IGlwbWk6IGtjczogRG91YmxlIE9CRiBwb2xsIHRpbWVvdXQgdG8gcmVkdWNlIGxhdGVu
Y3kKPiAKPiA+IGlwbWk6IGtjczogRG91YmxlIE9CRiBwb2xsIHRpbWVvdXQgdG8gMjAwIHVzIHRv
IHJlZHVjZSBsYXRlbmN5Cj4gCj4gPiBDb21taXQgZjkwYmMwZjk3ZjJiICgiaXBtaToga2NzOiBQ
b2xsIE9CRiBicmllZmx5IHRvIHJlZHVjZSBPQkUKPiA+IGxhdGVuY3kiKSBpbnRyb2R1Y2VkIGFu
IG9wdGltaXphdGlvbiB0byBwb2xsIHdoZW4gdGhlIGhvc3QgaGFzCgpJIGFzc3VtZSB0aGF0IHJl
bW92aW5nIHRoYXQgcGF0Y2ggZG9lc24ndCBmaXggdGhlIGlzc3VlLCBpdCB3b3VsZCBvbmx5Cm1h
a2UgaXQgd29yc2UsIHJpZ2h0PwoKPiA+IHJlYWQgdGhlIG91dHB1dCBkYXRhIHJlZ2lzdGVyIChP
RFIpLiBUZXN0aW5nIGhhcyBzaG93biB0aGF0IHRoZSAxMDB1cwo+ID4gdGltZW91dCB3YXMgbm90
IGFsd2F5cyBlbm91Z2guIFdoZW4gd2UgbWlzcyB0aGF0IDEwMHVzIHdpbmRvdywgaXQKPiA+IHJl
c3VsdHMgaW4gMTB4IHRoZSB0aW1lIHRvIGdldCB0aGUgbmV4dCBtZXNzYWdlIGZyb20gdGhlIEJN
QyB0byB0aGUKPiA+IGhvc3QuIFdoZW4geW91J3JlIHNlbmRpbmcgMTAwJ3Mgb2YgbWVzc2FnZXMg
YmV0d2VlbiB0aGUgQk1DIGFuZCBIb3N0LAo+IAo+IEkgZG8gbm90IHVuZGVyc3RhbmQsIGhvdyB0
aGlzIHBvbGwgdGltZW91dCBjYW4gcmVzdWx0IGluIHN1Y2ggYW4gaW5jcmVhc2UsCj4gYW5kIHdo
eSBhIHF1aXRlIGJpZyB0aW1lb3V0IGh1cnRzLCBidXQgSSBkbyBub3Qga25vdyB0aGUgaW1wbGVt
ZW50YXRpb24uCgpJdCdzIGJlY2F1c2UgaW5jcmVhc2luZyB0aGF0IG51bWJlciBjYXVzZXMgaXQg
dG8gcG9sbCBsb25nZXIgZm9yIHRoZQpldmVudCwgdGhlIGhvc3QgdGFrZXMgbG9uZ2VyIHRoYW4g
MTAwdXMgdG8gZ2VuZXJhdGUgdGhlIGV2ZW50LCBhbmQgaWYKdGhlIGV2ZW50IGlzIG1pc3NlZCB0
aGUgdGltZSB3aGVuIGl0IGlzIGNoZWNrZWQgYWdhaW4gaXMgdmVyeSBsb25nLgoKUG9sbGluZyBm
b3IgMTAwdXMgaXMgYWxyZWFkeSBwcmV0dHkgZXh0cmVtZS4gMjAwdXMgaXMgcmVhbGx5IHRvbyBs
b25nLgoKVGhlIHJlYWwgcHJvYmxlbSBpcyB0aGF0IHRoZXJlIGlzIG5vIGludGVycnVwdCBmb3Ig
dGhpcy4gIEknZCBhbHNvIGd1ZXNzCnRoZXJlIGlzIG5vIGludGVycnVwdCBvbiB0aGUgaG9zdCBz
aWRlLCBiZWNhdXNlIHRoYXQgd291bGQgc29sdmUgdGhpcwpwcm9ibGVtLCB0b28sIGFzIGl0IHdv
dWxkIGNlcnRhaW5seSBnZXQgYXJvdW5kIHRvIGhhbmRsaW5nIHRoZSBpbnRlcnVwdAppbiAxMDB1
cy4gIEknbSBhc3N1bWluZyB0aGUgaG9zdCBkcml2ZXIgaXMgbm90IHRoZSBMaW51eCBkcml2ZXIs
IGFzIGl0CnNob3VsZCBhbHNvIGhhbmRsZSB0aGlzIGluIGEgdGltZWx5IG1hbm5lciwgZXZlbiB3
aGVuIHBvbGxpbmcuCgpJZiBwZW9wbGUgd2FudCBoYXJkd2FyZSB0byBwZXJmb3JtIHdlbGwsIHRo
ZXkgb3VnaHQgdG8gZGVzaWduIGl0IGFuZCBub3QKZXhwZWN0IHNvZnR3YXJlIHRvIGZpeCBhbGwg
dGhlIHByb2JsZW1zLgoKVGhlIHJpZ2h0IHdheSB0byBmaXggdGhpcyBpcyBwcm9iYWJseSB0byBk
byB0aGUgc2FtZSB0aGluZyB0aGUgaG9zdCBzaWRlCkxpbnV4IGRyaXZlciBkb2VzLiAgSXQgaGFz
IGEga2VybmVsIHRocmVhZCB0aGF0IGlzIGtpY2tlZCBvZmYgdG8gZG8KdGhpcy4gIFVuZm9ydHVu
YXRlbHksIHRoYXQncyBtb3JlIGNvbXBsaWNhdGVkIHRvIGltcGxlbWVudCwgYnV0IGl0CmF2b2lk
cyBwb2xsaW5nIGluIHRoaXMgbG9jYXRpb24gKHdoaWNoIGNhdXNlcyBsYXRlbmN5IGlzc3VlcyBv
biB0aGUgQk1DCnNpZGUpIGFuZCBsZXRzIHlvdSBwb2xsIGxvbmdlciB3aXRob3V0IGNhdXNpbmcg
aXNzdWVzLgoKSSdsbCBsZXQgdGhlIHBlb3BsZSB3aG8gbWFpbnRhaW4gdGhhdCBjb2RlIGNvbW1l
bnQuCgotY29yZXkKCj4gCj4gPiB0aGlzIHJlc3VsdHMgaW4gYSBzZXJ2ZXIgYm9vdCB0YWtpbmcg
NTAlIGxvbmdlciBmb3IgSUJNIFAxMCBtYWNoaW5lcy4KPiA+IAo+ID4gU3RhcnRlZCB3aXRoIDEw
MDAgYW5kIHdvcmtlZCBpdCBkb3duIHVudGlsIHRoZSBpc3N1ZSBzdGFydGVkIHRvIHJlb2NjdXIu
Cj4gPiAyMDAgd2FzIHRoZSBzd2VldCBzcG90IGluIG15IHRlc3RpbmcuIDE1MCBzaG93ZWQgdGhl
IGlzc3VlCj4gPiBpbnRlcm1pdHRlbnRseS4KPiAKPiBJ4oCZZCBhZGQgYSBibGFuayBsaW5lIGhl
cmUuCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmRyZXcgR2Vpc3NsZXIgPGdlaXNzb25hdG9yQHlh
aG9vLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX2FzcGVlZC5j
IHwgMiArLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVk
LmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9rY3NfYm1jX2FzcGVlZC5jCj4gPiBpbmRleCA3MjY0MGRh
NTUzODAuLmFmMWVhZTYxNTNmNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2tj
c19ibWNfYXNwZWVkLmMKPiA+ICsrKyBiL2RyaXZlcnMvY2hhci9pcG1pL2tjc19ibWNfYXNwZWVk
LmMKPiA+IEBAIC00MjIsNyArNDIyLDcgQEAgc3RhdGljIHZvaWQgYXNwZWVkX2tjc19pcnFfbWFz
a191cGRhdGUoc3RydWN0IGtjc19ibWNfZGV2aWNlICprY3NfYm1jLCB1OCBtYXNrLAo+ID4gICAJ
CQkgKiBtaXNzZWQgdGhlIGV2ZW50Lgo+ID4gICAJCQkgKi8KPiA+ICAgCQkJcmMgPSByZWFkX3Bv
bGxfdGltZW91dF9hdG9taWMoYXNwZWVkX2tjc19pbmIsIHN0ciwKPiA+IC0JCQkJCQkgICAgICAh
KHN0ciAmIEtDU19CTUNfU1RSX09CRiksIDEsIDEwMCwgZmFsc2UsCj4gPiArCQkJCQkJICAgICAg
IShzdHIgJiBLQ1NfQk1DX1NUUl9PQkYpLCAxLCAyMDAsIGZhbHNlLAo+ID4gICAJCQkJCQkgICAg
ICAmcHJpdi0+a2NzX2JtYywgcHJpdi0+a2NzX2JtYy5pb3JlZy5zdHIpOwo+ID4gICAJCQkvKiBU
aW1lIGZvciB0aGUgc2xvdyBwYXRoPyAqLwo+ID4gICAJCQlpZiAocmMgPT0gLUVUSU1FRE9VVCkK
PiAKPiAKPiBLaW5kIHJlZ2FyZHMsCj4gCj4gUGF1bAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QK
T3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
