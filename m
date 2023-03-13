Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA3A6B7C0D
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Mar 2023 16:33:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pbkBB-0007q6-1S;
	Mon, 13 Mar 2023 15:33:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pbkB9-0007pv-LY
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 15:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oNwDEBWZ5ug+AYgMGjvbsZn7Znk5SEKrPD4xhO6U4tE=; b=TFvIcf0W5VS6H2cM3nStZjK9/s
 j3iDjzivO+sUH9pA3ABSprMgmdcvfujYoCKMStxLA0KgpUb1zZ44qGZo5Rfy/TLL6moIVo2gylaWP
 vTcWmjruUOg/oiXvP+tBiLBaruijF0r57H5h46MsX6YPT7qcCeENrQFgzAy6pVanpXa8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oNwDEBWZ5ug+AYgMGjvbsZn7Znk5SEKrPD4xhO6U4tE=; b=aB/io87g/rchuCMg8Oc08ZgNZP
 PV+zmaRore33BNcd2POmZMfJ5KER7pdG7UCOmS8wU8FLN1htdSG+B7O38nP6Gzs73tOVrfo7Ct3o/
 8K1ocxrSEVKl8rLd34mrEMxh3xcprWoX8ovU/UcYQ8qtjyyMp9gVQz9FDtFhImbsyV9A=;
Received: from mail-oa1-f42.google.com ([209.85.160.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pbkB5-0003wy-7J for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 15:33:40 +0000
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-176b90e14a9so14136341fac.9
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 13 Mar 2023 08:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678721609;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:from:to:cc:subject:date:message-id:reply-to;
 bh=oNwDEBWZ5ug+AYgMGjvbsZn7Znk5SEKrPD4xhO6U4tE=;
 b=nSl/T1Ti7am2vEpIiPDQS4nFGhpBkuFQmKRxn7mMbYmx0ZWiC8I6SJ9S7eafQjDeVj
 usjeelXA+QagBlnYF4yIqiOXur7H4J+6/VTe3kcqF48EHFJMkOhUKz3x7jyymSGnEsYp
 cUDlqpbFtLxnyZ0AiAdsHQI14dNBWRizJUzs2Sw2jlmaxs4q7duJxVzFZdHDr8AaU3WU
 k6VIwztfZJyR8M5vw36V49bYXfGy5f9yNO7dfFO8y9gcrQ/MwiR8+jSajE5tg0/fYFOM
 al7Jtfd399U/uDbHMJb4APynj/yIOAExDSpH0RAIHTiOQL+n305q7EfDrSkep+LZAcWB
 ZiqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678721609;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :sender:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oNwDEBWZ5ug+AYgMGjvbsZn7Znk5SEKrPD4xhO6U4tE=;
 b=MF2aiqeRggPi/B5jSP6QitRyKrS7H2Oc4wNuRoZTNhEKaWbIj7PoN9+3Ft7NansRk4
 N+wHPZNlr7W1DSMYc88d1mX3ynlhuwYFhR1lZj5KiueH1KXMlrRQH+XWmc4BQP0DlBPl
 Sm3KcEI0jBASjmiIj3zkqkCeMxapmoyJ//W49Mtz6hKcbrXXPLREBlVzoZygJwVQHp6M
 0t5wMTcJAHhXxTE9KCDrAMcl8CfnW2joQ+fIWWVtdn38mSOc4GNAr6bON6Ag4XILNx6s
 elzVT5cpAbzeuw7Cgtu2wOyAfLyk7bP5NTRrViwFZQqdgA2YK50F5NFM0z5FWot02hHS
 Om4g==
X-Gm-Message-State: AO0yUKXYhrQy1m5IOQ6piMicDSl0Vpb47haGB2myetumCxOJjH0jzRlI
 Aj4csxDeS3OKpudMgWanOlPp2zN/Tw==
X-Google-Smtp-Source: AK7set+nlk21ngh/sA8YiDkPlUZxC3a557ErU8jUCkpkOz/3jTZEzRaZVh5ujPmJiXFNE6FEZdp2Fw==
X-Received: by 2002:a05:6870:648f:b0:177:ac71:a216 with SMTP id
 cz15-20020a056870648f00b00177ac71a216mr2836906oab.11.1678721609326; 
 Mon, 13 Mar 2023 08:33:29 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 dt20-20020a0568705a9400b001779d1ae123sm68273oab.36.2023.03.13.08.33.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Mar 2023 08:33:28 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:fb9c:387e:209f:8278])
 by serve.minyard.net (Postfix) with ESMTPSA id 3CC2E18000C;
 Mon, 13 Mar 2023 15:33:28 +0000 (UTC)
Date: Mon, 13 Mar 2023 10:33:27 -0500
From: Corey Minyard <minyard@acm.org>
To: Christian Theune <ct@flyingcircus.io>
Message-ID: <ZA9CR6nLtHqav2Lc@minyard.net>
References: <Y/4tpHxe0irCRxjK@minyard.net>
 <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
 <Y/40CIt6lw+0vjv1@minyard.net>
 <BBC4CC30-BCAC-400C-8804-8E8F6FD296C8@flyingcircus.io>
 <Y/+ETg3dpg+Ui48+@minyard.net>
 <28273499-DB8A-4C04-8BEE-BF5488BB1A6F@flyingcircus.io>
 <ZAUdcpPfEDmmEcAF@minyard.net>
 <0393CB55-5A1D-408E-A4DA-41958BE81CA1@flyingcircus.io>
 <ZA8d2WkcAoUpkksa@minyard.net>
 <A94E62C4-5BF5-4D56-BEE9-581CDA25FB77@flyingcircus.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <A94E62C4-5BF5-4D56-BEE9-581CDA25FB77@flyingcircus.io>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 13, 2023 at 02:07:01PM +0100, Christian Theune
 wrote: > Hi, > > yeah, the IPMI log is fine. This is a 10 minute interval
 job in our system that exports the log and clears it: > > The job l [...]
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.42 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.42 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pbkB5-0003wy-7J
Subject: Re: [Openipmi-developer] PANIC / OEM strings missing,
 not sure whether misconfiguration or a bug
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgMDI6MDc6MDFQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVu
ZSB3cm90ZToKPiBIaSwKPiAKPiB5ZWFoLCB0aGUgSVBNSSBsb2cgaXMgZmluZS4gVGhpcyBpcyBh
IDEwIG1pbnV0ZSBpbnRlcnZhbCBqb2IgaW4gb3VyIHN5c3RlbSB0aGF0IGV4cG9ydHMgdGhlIGxv
ZyBhbmQgY2xlYXJzIGl0Ogo+IAo+IFRoZSBqb2IgbG9va3MgbGlrZSB0aGlzOgo+IAo+IC9uaXgv
c3RvcmUvbTdsYjM2ZHI5M3FqMjdyOXZza21qaWh6OGlteXd5ODYtaXBtaXRvb2wtMS44LjE4L2Jp
bi9pcG1pdG9vbCBzZWwgZWxpc3QKPiAvbml4L3N0b3JlL203bGIzNmRyOTNxajI3cjl2c2ttamlo
ejhpbXl3eTg2LWlwbWl0b29sLTEuOC4xOC9iaW4vaXBtaXRvb2wgc2VsIGNsZWFyCj4gCj4gU28g
aXTigJlzIG5vdCBhdG9taWMgYnV0IGl0IHJ1bnMgYWZ0ZXIgdGhlIGJvb3QgYW5kIHRoZSBlbGlz
dCBzaG91bGQgb3V0cHV0IGl0IHByb3Blcmx5IOKApiBhdCBsZWFzdCBpdCBkaWQgaW4gdGhlIHBh
c3QuIDspCj4gCj4gQXMgSSBzYWlkIC0gSeKAmW0gaGFwcHkgdG8gcnVuIGFueSBwYXRjaGVzIHlv
dSBoYXZlLiBJZiB5b3UgcG9pbnQgbWUgdG8gYSBnaXQgYnJhbmNoIHNvbWV3aGVyZSBJIGNhbiBz
d2l0Y2ggdGhhdCBzeXN0ZW0gZWFzaWx5LgoKT2ssIEkgaGF2ZSBhIGJyYW5jaCBhdAoKaHR0cHM6
Ly9naXRodWIuY29tL2NtaW55YXJkL2xpbnV4LWlwbWkuZ2l0OmRlYnVnLXBhbmljLW9lbS1ldmVu
dHMKCnRoYXQgaGFzIGRlYnVnIHRyYWNpbmcuICBJdCB3aWxsIHByaW50IHRoZSBmdW5jdGlvbiBm
b3IgYWxsIHBhbmljIGV2ZW50CmhhbmRsZXJzLCB0aGVpciByZXR1cm4gdmFsdWVzLCBhbmQgYWRk
cyB0cmFjZXMgaW4gdGhlIElQTUkgcGFuaWMgZXZlbnQKaGFuZGxlcnMuCgpJdCdzIGEgc2luZ2xl
IHBhdGNoIHJpZ2h0IG9uIHRvcCBvZiA2LjI7IEknbSBub3Qgc3VyZSBob3cgcG9ydGFibGUgaXQg
aXMKdG8gb3RoZXIga2VybmVsIHZlcnNpb25zLiAgSSBjYW4gcG9ydCBpZiB5b3UgbGlrZS4KClRo
YW5rcywKCi1jb3JleQoKPiAgCj4gQ2hlZXJzLAo+IENocmlzdGlhbgo+IAo+ID4gT24gMTMuIE1h
ciAyMDIzLCBhdCAxMzo1OCwgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3cm90ZToK
PiA+IAo+ID4gT24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgMTA6Mjc6NTFBTSArMDEwMCwgQ2hyaXN0
aWFuIFRoZXVuZSB3cm90ZToKPiA+PiBIaSwKPiA+PiAKPiA+PiBhbHJpZ2h0LCBzbyBoZXJl4oCZ
cyB0aGUgb3V0cHV0IGZyb20gdGhlIE5peE9TIG1hY2hpbmU6Cj4gPj4gCj4gPj4gcm9vdEB4eHgg
fiAjIGVjaG8gYyA+L3Byb2Mvc3lzcnEtdHJpZ2dlcgo+ID4+IGNsaWVudF9sb29wOiBzZW5kIGRp
c2Nvbm5lY3Q6IEJyb2tlbiBwaXBlCj4gPj4g4oCmCj4gPj4gCj4gPj4gcm9vdEB4eHggfiAjIGpv
dXJuYWxjdGwgLXUgaXBtaS1sb2cuc2VydmljZQo+ID4+IC0tIEpvdXJuYWwgYmVnaW5zIGF0IFN1
biAyMDIzLTAyLTI2IDE0OjI1OjM2IENFVCwgZW5kcyBhdCBNb24gMjAyMy0wMy0xMyAxMDoyNToy
NyBDRVQuIC0tCj4gPj4gTWFyIDEzIDEwOjEyOjM4IHh4eCBpcG1pLWxvZy1zdGFydFs1MjA5NzNd
OiBDbGVhcmluZyBTRUwuICBQbGVhc2UgYWxsb3cgYSBmZXcgc2Vjb25kcyB0byBlcmFzZS4KPiA+
PiAuLi4KPiA+PiAtLSBCb290IGZkZWY0OTZlNzg0ZTQ1NDFhYmQ5YWU0MGRmNDcyYTBiIC0tCj4g
Pj4gTWFyIDEzIDEwOjI1OjA3IHh4eCBpcG1pLWxvZy1zdGFydFsxOTczXTogICAgMSB8IDAzLzEz
LzIwMjMgfCAwOToxMjo0OSB8IEV2ZW50IExvZ2dpbmcgRGlzYWJsZWQgU0VMIHwgTG9nIGFyZWEg
cmVzZXQvY2xlYXJlZCB8IEFzc2VydGVkCj4gPj4gTWFyIDEzIDEwOjI1OjA3IHh4eCBpcG1pLWxv
Zy1zdGFydFsxOTczXTogICAgMiB8IDAzLzEzLzIwMjMgfCAwOToyMTowNiB8IFdhdGNoZG9nMiBP
UyBXYXRjaGRvZyB8IEhhcmQgcmVzZXQgfCBBc3NlcnRlZAo+ID4+IE1hciAxMyAxMDoyNTowNyB4
eHggaXBtaS1sb2ctc3RhcnRbMTk3N106IENsZWFyaW5nIFNFTC4gIFBsZWFzZSBhbGxvdyBhIGZl
dyBzZWNvbmRzIHRvIGVyYXNlLgo+ID4gCj4gPiBIbW0sIHRoZSBTRUwgZ290IGNsZWFyZWQuICBU
aGF0IHdvdWxkIGNsZWFyIG91dCBhbnkgb2YgdGhlIGxvZ3MgdGhhdAo+ID4gd2VyZSBpc3N1ZWQg
YmVmb3JlIHRoYXQgdGltZS4gIEknbSBub3Qgc3VyZSB3aGVuIHRoZSBhYm92ZSBoYXBwZW5lZAo+
ID4gdmVyc2VzIHRoZSBjcmFzaCwgdGhvdWdoLiAgSXQgbG9va3MgbGlrZSBpdCBvY2N1cnJlZCBh
cyBwYXJ0IG9mIHRoZQo+ID4gcmVib290LCBidXQgSSdtIG5vdCBzdXJlIHdoYXQgSSdtIHNlZWlu
Zy4gIE1heWJlIHlvdSBoYXZlIGEgc3RhcnR1cAo+ID4gcHJvY2VzcyB0aGF0IGNsZWFycyB0aGUg
U0VMPwo+ID4gCj4gPiBBc3N1bWluZyB0aGF0J3Mgbm90IHRoZSBpc3N1ZSwgd2hhdCB5b3UgaGF2
ZSBsb29rcyBvay4gIEknZCBuZWVkIHRvIGFkZAo+ID4gc29tZSBsb2dzIHRvIHRoZSBrZXJuZWwg
dG8gc2VlIGlmIHRoZSBsb2cgb3BlcmF0aW9uIGV2ZXIgaGFwcGVucy4KPiA+IAo+ID4gLWNvcmV5
Cj4gPiAKPiA+PiAKPiA+PiBUaGUgU09MIGxvZyBsb29rcyBsaWtlIHRoaXM6Cj4gPj4gCj4gPj4g
Cj4gPj4gWzExMDc1ODUuOTE3Njg5XSBzeXNycTogVHJpZ2dlciBhIGNyYXNoCj4gPj4gWzExMDc1
ODUuOTIxMjcyXSBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogc3lzcnEgdHJpZ2dlcmVkIGNy
YXNoCj4gPj4gWzExMDc1ODUuOTI3MTc4XSBDUFU6IDEgUElEOiA1MjEwMzMgQ29tbTogYmFzaCBU
YWludGVkOiBHICAgICAgICAgIEkgICAgICAgNS4xMC4xNTkgIzEtTml4T1MKPiA+PiBbMTEwNzU4
NS45MzUzMzVdIEhhcmR3YXJlIG5hbWU6IERlbGwgSW5jLiBQb3dlckVkZ2UgUjUxMC8wMEhEUDAs
IEJJT1MgMS4xMS4wIDA3LzIzLzIwMTIKPiA+PiBbMTEwNzU4NS45NDMwNThdIENhbGwgVHJhY2U6
Cj4gPj4gWzExMDc1ODUuOTQ1NjgwXSAgZHVtcF9zdGFjaysweDZiLzB4ODMKPiA+PiBbMTEwNzU4
NS45NDkxNThdICBwYW5pYysweDEwMS8weDJjOAo+ID4+IFsxMTA3NTg1Ljk1MjM3OV0gID8gcHJp
bnRrKzB4NTgvMHg3Mwo+ID4+IFsxMTA3NTg1Ljk1NTY4N10gIHN5c3JxX2hhbmRsZV9jcmFzaCsw
eDE2LzB4MjAKPiA+PiBbMTEwNzU4NS45NTk4NTldICBfX2hhbmRsZV9zeXNycS5jb2xkKzB4NDMv
MHgxMWEKPiA+PiBbMTEwNzU4NS45NjQyMDNdICB3cml0ZV9zeXNycV90cmlnZ2VyKzB4MjQvMHg0
MAo+ID4+IFsxMTA3NTg1Ljk2ODQ2M10gIHByb2NfcmVnX3dyaXRlKzB4NTEvMHg5MAo+ID4+IFsx
MTA3NTg1Ljk3MjI5MF0gIHZmc193cml0ZSsweGMzLzB4MjgwCj4gPj4gWzExMDc1ODUuOTc1NzY4
XSAga3N5c193cml0ZSsweDVmLzB4ZTAKPiA+PiBbMTEwNzU4NS45NzkyNDhdICBkb19zeXNjYWxs
XzY0KzB4MzMvMHg0MAo+ID4+IFsxMTA3NTg1Ljk4Mjk4N10gIGVudHJ5X1NZU0NBTExfNjRfYWZ0
ZXJfaHdmcmFtZSsweDYxLzB4YzYKPiA+PiBbMTEwNzU4NS45ODgxOTldIFJJUDogMDAzMzoweDdm
NTg3MzkzMjEzMwo+ID4+IFsxMTA3NTg1Ljk5MTkzOF0gQ29kZTogMGMgMDAgZjcgZDggNjQgODkg
MDIgNDggYzcgYzAgZmYgZmYgZmYgZmYgZWIgYjMgMGYgMWYgODAgMDAgMDAgMDAgMDAgNjQgOGIg
MDQgMjUgMTggMDAgMDAgMDAgODUgYzAgNzUgMTQgYjggMDEgMDAgMDAgMDAgMGYgMDUgPDQ4PiAz
ZCAwMCBmMCBmZiBmZiA3NyA1NSBjMyAwZiAxZiA0MCAwMCA0MSA1NCA0OSA4OSBkNCA1NSA0OCA4
OSBmNQo+ID4+IFsxMTA3NTg2LjAxMDg0Ml0gUlNQOiAwMDJiOjAwMDA3ZmZjYzEzODA4YzggRUZM
QUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAwMQo+ID4+IFsxMTA3NTg2LjAx
ODU2Nl0gUkFYOiBmZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAwMDAwMDAwMDAwMDAwMiBSQ1g6IDAw
MDA3ZjU4NzM5MzIxMzMKPiA+PiBbMTEwNzU4Ni4wMjU5MjNdIFJEWDogMDAwMDAwMDAwMDAwMDAw
MiBSU0k6IDAwMDAwMDAwMDA1YzFjMDggUkRJOiAwMDAwMDAwMDAwMDAwMDAxCj4gPj4gWzExMDc1
ODYuMDMzMjEzXSBSQlA6IDAwMDAwMDAwMDA1YzFjMDggUjA4OiAwMDAwMDAwMDAwMDAwMDBhIFIw
OTogMDAwMDdmNTg3MzljMmY0MAo+ID4+IFsxMTA3NTg2LjA0MDUwNF0gUjEwOiAwMDAwMDAwMDAw
NWNjMzQ4IFIxMTogMDAwMDAwMDAwMDAwMDI0NiBSMTI6IDAwMDAwMDAwMDAwMDAwMDIKPiA+PiBb
MTEwNzU4Ni4wNDc3OTRdIFIxMzogMDAwMDdmNTg3M2EwMDUyMCBSMTQ6IDAwMDA3ZjU4NzNhMDA3
MjAgUjE1OiAwMDAwMDAwMDAwMDAwMDAyCj4gPj4gCj4gPj4gTm90aGluZyBvYnZpb3VzIHRvIG1l
IGhlcmUg4oCmIGlmIHlvdSBoYXZlIGFueSBmdXJ0aGVyIGlkZWFzIHdoYXQgdG8gdGVzdCwgbGV0
IG1lIGtub3cuIEkgc2hvdWxkIGJlIG1vcmUgcmVzcG9uc2l2ZSBhZ2FpbiBub3cuCj4gPj4gCj4g
Pj4gVGhhbmtzIGFuZCBraW5kIHJlZ2FyZHMsCj4gPj4gQ2hyaXN0aWFuCj4gPj4gCj4gPj4+IE9u
IDUuIE1hciAyMDIzLCBhdCAyMzo1MywgQ29yZXkgTWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3
cm90ZToKPiA+Pj4gCj4gPj4+IE9uIFdlZCwgTWFyIDAxLCAyMDIzIGF0IDA2OjAwOjA3UE0gKzAx
MDAsIENocmlzdGlhbiBUaGV1bmUgd3JvdGU6Cj4gPj4+PiBJ4oCZbSBnb2luZyB0byBhY3R1YWxs
eSBhdHRhY2ggYSBzZXJpYWwgY29uc29sZSB0byB3YXRjaCB0aGUg4oCcZWNobyBj4oCdIHBhbmlj
LCBtYXliZSB0aGF0IGdpdmVzIF9zb21lXyBpbmRpY2F0aW9uLgo+ID4+Pj4gCj4gPj4+PiBPdGhl
cndpc2U6IEkgY2FuIHF1aWNrbHkgcnVuIHBhdGNoZXMgb24gdGhlIGtlcm5lbCB0aGVyZSB0byB0
cnkgb3V0IHRoaW5ncy4gKEFuZCB0aGUgZnVuZGluZyBvZmZlciBzdGlsbCBzdGFuZHMuKQo+ID4+
PiAKPiA+Pj4gQW55IG5ld3Mgb24gdGhpcz8gIEknbSBjdXJpb3VzIHdoYXQgdGhpcyBjb3VsZCBi
ZS4KPiA+Pj4gCj4gPj4+IC1jb3JleQo+ID4+PiAKPiA+Pj4+IAo+ID4+Pj4gQ2hyaXN0aWFuCj4g
Pj4+PiAKPiA+Pj4+PiBPbiAxLiBNYXIgMjAyMywgYXQgMTc6NTgsIENvcmV5IE1pbnlhcmQgPG1p
bnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPj4+Pj4gCj4gPj4+Pj4gT24gVHVlLCBGZWIgMjgsIDIw
MjMgYXQgMDY6MzY6MTdQTSArMDEwMCwgQ2hyaXN0aWFuIFRoZXVuZSB3cm90ZToKPiA+Pj4+Pj4g
VGhhbmtzLCBib3RoIG1hY2hpbmVzIHJlcG9ydDoKPiA+Pj4+Pj4gCj4gPj4+Pj4+ICMgY2F0IC9z
eXMvbW9kdWxlL2lwbWlfbXNnaGFuZGxlci9wYXJhbWV0ZXJzL3BhbmljX29wCj4gPj4+Pj4+IHN0
cmluZwo+ID4+Pj4+IAo+ID4+Pj4+IEF0IHRoaXMgcG9pbnQsIEkgaGF2ZSBubyBpZGVhLiAgSSdk
IGhhdmUgdG8gc3RhcnQgYWRkaW5nIHByaW50a3MgaW50bwo+ID4+Pj4+IHRoZSBjb2RlIGFuZCBj
YXVzZSBjcmFzaGVzIHRvIHNlZSB3aGF0IGlzIGhhcHBpbmcuCj4gPj4+Pj4gCj4gPj4+Pj4gTWF5
YmUgc29tZXRoaW5nIGlzIGdldHRpbmcgaW4gdGhlIHdheSBvZiB0aGUgcGFuaWMgbm90aWZpZXJz
IGFuZCBkb2luZwo+ID4+Pj4+IHNvbWV0aGluZyB0byBwcmV2ZW50IHRoZSBJUE1JIGRyaXZlciBm
cm9tIHdvcmtpbmcuCj4gPj4+Pj4gCj4gPj4+Pj4gLWNvcmV5Cj4gPj4+Pj4gCj4gPj4+Pj4+IAo+
ID4+Pj4+PiAKPiA+Pj4+Pj4+IE9uIDI4LiBGZWIgMjAyMywgYXQgMTg6MDQsIENvcmV5IE1pbnlh
cmQgPG1pbnlhcmRAYWNtLm9yZz4gd3JvdGU6Cj4gPj4+Pj4+PiAKPiA+Pj4+Pj4+IE9oLCBJIGZv
cmdvdC4gIFlvdSBjYW4gbG9vayBhdCBwYW5pY19vcCBpbiAvc3lzL21vZHVsZS9pcG1pX21zZ2hh
bmRsZXIvcGFyYW1ldGVycy9wYW5pY19vcAo+ID4+Pj4+Pj4gCj4gPj4+Pj4+PiAtY29yZXkKPiA+
Pj4+Pj4+IAo+ID4+Pj4+Pj4gT24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMDU6NDg6MDdQTSArMDEw
MCwgQ2hyaXN0aWFuIFRoZXVuZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+ID4+Pj4+
Pj4+IEhpLAo+ID4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+PiBPbiAyOC4gRmViIDIwMjMsIGF0IDE3OjM2
LCBDb3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+ID4+Pj4+Pj4+PiAKPiA+
Pj4+Pj4+Pj4gT24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMDI6NTM6MTJQTSArMDEwMCwgQ2hyaXN0
aWFuIFRoZXVuZSB2aWEgT3BlbmlwbWktZGV2ZWxvcGVyIHdyb3RlOgo+ID4+Pj4+Pj4+Pj4gSGks
Cj4gPj4+Pj4+Pj4+PiAKPiA+Pj4+Pj4+Pj4+IEnigJl2ZSBiZWVuIHRyeWluZyB0byBkZWJ1ZyB0
aGUgUEFOSUMgYW5kIE9FTSBzdHJpbmcgaGFuZGxpbmcgYW5kIGFtIHJ1bm5pbmcgb3V0IG9mIGlk
ZWFzIHdoZXRoZXIgdGhpcyBpcyBhIGJ1ZyBvciB3aGV0aGVyIHNvbWV0aGluZyBzbyBzdWJ0bGUg
aGFzIGNoYW5nZWQgaW4gbXkgY29uZmlnIHRoYXQgSeKAmW0ganVzdCBub3Qgc2VlaW5nIGl0Lgo+
ID4+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+PiAoTm90ZTogSeKAmW0gd2lsbGluZyB0byBwYXkgZm9y
IGNvbnN1bHRpbmcuKQo+ID4+Pj4+Pj4+PiAKPiA+Pj4+Pj4+Pj4gUHJvYmFibHkgbm90IG5lY2Vz
c2FyeS4KPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiBUaGFua3MhIFRoZSBvZmZlciBhbHdheXMgc3Rh
bmRzLiBJZiB3ZSBzaG91bGQgZXZlciBtZWV0IEnigJltIGFsc28gYWJsZSB0byBwYXkgaW4gYmV2
ZXJhZ2VzLiA7KQo+ID4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+Pj4gSSBoYXZlIG1hY2hpbmVzIHRoYXQg
d2XigJl2ZSBtb3ZlZCBmcm9tIGFuIG9sZGVyIHNldHVwIChHZW50b28sIChtb3N0bHkpIHZhbmls
bGEga2VybmVsIDQuMTkuMTU3KSB0byBhIG5ld2VyIHNldHVwIChOaXhPUywgKG1vc3RseSkgdmFu
aWxsYSBrZXJuZWwgNS4xMC4xNTkpIGFuZCBJ4oCZbSBub3cgZXhwZXJpZW5jaW5nIGNyYXNoZXMg
dGhhdCBzZWVtIHRvIGJlIGtlcm5lbCBwYW5pY3MgYnV0IGRvIG5vdCBnZXQgdGhlIHVzdWFsIG1l
c3NhZ2VzIGluIHRoZSBJUE1JIFNFTC4KPiA+Pj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4+IEkganVzdCB0
ZXN0ZWQgb24gc3RvY2sgNS4xMC4xNTkgYW5kIGl0IHdvcmtlZCB3aXRob3V0IGlzc3VlLiAgRXZl
cnl0aGluZwo+ID4+Pj4+Pj4+PiB5b3UgaGF2ZSBiZWxvdyBsb29rcyBvay4KPiA+Pj4+Pj4+Pj4g
Cj4gPj4+Pj4+Pj4+IENhbiB5b3UgdGVzdCBieSBjYXVzaW5nIGEgY3Jhc2ggd2l0aDoKPiA+Pj4+
Pj4+Pj4gCj4gPj4+Pj4+Pj4+IGVjaG8gYyA+L3Byb2Mvc3lzcnEtdHJpZ2dlcgo+ID4+Pj4+Pj4+
PiAKPiA+Pj4+Pj4+Pj4gYW5kIHNlZSBpZiBpdCB3b3Jrcz8KPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+
PiBZZWFoLCBhbHJlYWR5IHRyaWVkIHRoYXQgYW5kIHVuZm9ydHVuYXRlbHkgdGhhdCBfZG9lc27i
gJl0XyB3b3JrLgo+ID4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+PiBJdCBzb3VuZHMgbGlrZSB5b3UgYXJl
IGhhdmluZyBzb21lIHR5cGUgb2YgY3Jhc2ggdGhhdCB5b3Ugd291bGQgbm9ybWFsbHkKPiA+Pj4+
Pj4+Pj4gdXNlIHRoZSBJUE1JIGxvZ3MgdG8gZGVidWcuICBIb3dldmVyLCB0aGV5IGFyZW4ndCBw
ZXJmZWN0LCB0aGUgc3lzdGVtCj4gPj4+Pj4+Pj4+IGhhcyB0byBzdGF5IHVwIGxvbmcgZW5vdWdo
IHRvIGdldCB0aGVtIGludG8gdGhlIGV2ZW50IGxvZy4KPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiBJ
IHRoaW5rIHRoZXkgYXJlIHN0YXlpbmcgdXAgbG9uZyBlbm91Z2ggYmVjYXVzZSBhIHBhbmljIHRy
aWdnZXJzIHRoZSAyNTUgc2Vjb25kIGJ1bXAgaW4gdGhlIHdhdGNoZG9nIGFuZCBvbmx5IHRoZW4g
cGFzcyBvbi4gSG93ZXZlciwgaeKAmXZlIGFsc28gbm90aWNlZCB0aGF0IHRoZSBrZXJuZWwgX3No
b3VsZF8gYmUgcmVib290aW5nIGFmdGVyIGEgcGFuaWMgbXVjaCBmYXN0ZXIgKGFuZCBub3QgcmVs
eSBvbiB0aGUgd2F0Y2hkb2cpIGFuZCB0aGF0IGRvZXNu4oCZdCBoYXBwZW4gZWl0aGVyLiAoU29y
cnkgdGhpcyBqdXN0IHBvcHBlZCBmcm9tIHRoZSBiYWNrIG9mIG15IGhlYWQpLgo+ID4+Pj4+Pj4+
IAo+ID4+Pj4+Pj4+PiBJbiB0aGlzIHNpdHVhdGlvbiwgZ2V0dGluZyBhIHNlcmlhbCBjb25zb2xl
IChwcm9iYWJseSB0aHJvdWdoIElQTUkKPiA+Pj4+Pj4+Pj4gU2VyaWFsIG92ZXIgTEFOKSBhbmQg
Z2V0dGluZyB0aGUgY29uc29sZSBvdXRwdXQgb24gYSBjcmFzaCBpcyBwcm9iYWJseQo+ID4+Pj4+
Pj4+PiB5b3VyIGJlc3Qgb3B0aW9uLiAgWW91IGNhbiB1c2UgaXBtaXRvb2wgZm9yIHRoaXMsIG9y
IEkgaGF2ZSBhIGxpYnJhcnkKPiA+Pj4+Pj4+Pj4gdGhhdCBpcyBhYmxlIHRvIG1ha2UgY29ubmVj
dGlvbnMgdG8gc2VyaWFsIHBvcnRzLCBpbmNsdWRpbmcgdGhyb3VnaCBJUE1JCj4gPj4+Pj4+Pj4+
IFNvTC4KPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiBZdXAuIEJlZW4gdGhlcmUsIHRvby4gOikKPiA+
Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiBVbmZvcnR1bmF0ZWx5IHdl4oCZcmUgY3VycmVudGx5IGNoYXNp
bmcgc29tZXRoaW5nIHRoYXQgcG9wcyB1cCB2ZXJ5IHJhbmRvbWx5IG9uIHNvbWV3aGF0IG9kZCBt
YWNoaW5lcyBhbmQgSSBhbHNvIGhhdmUgdGhlIGZlZWxpbmcgdGhhdCBpdOKAmXMgc3lzdGVtYXRp
Y2FsbHkgYnJva2VuIHJpZ2h0IG5vdyAoYXMgdGhlIOKAnGVjaG8gY+KAnSBkb2VzbuKAmXQgd29y
aykuCj4gPj4+Pj4+Pj4gCj4gPj4+Pj4+Pj4gVGhhbmtzIGEgbG90LAo+ID4+Pj4+Pj4+IENocmlz
dGlhbgo+ID4+Pj4+Pj4+IAo+ID4+Pj4+Pj4+IC0tIAo+ID4+Pj4+Pj4+IENocmlzdGlhbiBUaGV1
bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUgMjE5NDAxIDAKPiA+Pj4+Pj4+PiBG
bHlpbmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczovL2ZseWluZ2Np
cmN1cy5pbwo+ID4+Pj4+Pj4+IExlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2MTA4IEhhbGxlIChT
YWFsZSkgwrcgRGV1dHNjaGxhbmQKPiA+Pj4+Pj4+PiBIUiBTdGVuZGFsIEhSQiAyMTE2OSDCtyBH
ZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFphZ3JvZG5pY2sK
PiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiAKPiA+Pj4+Pj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+Pj4+IE9wZW5pcG1p
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4+PiBPcGVuaXBtaS1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cj4gPj4+Pj4+Pj4gaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCj4gPj4+Pj4+IAo+ID4+Pj4+PiBM
aWViZSBHcsO8w59lLAo+ID4+Pj4+PiBDaHJpc3RpYW4gVGhldW5lCj4gPj4+Pj4+IAo+ID4+Pj4+
PiAtLSAKPiA+Pj4+Pj4gQ2hyaXN0aWFuIFRoZXVuZSDCtyBjdEBmbHlpbmdjaXJjdXMuaW8gwrcg
KzQ5IDM0NSAyMTk0MDEgMAo+ID4+Pj4+PiBGbHlpbmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlv
bnMgR21iSCDCtyBodHRwczovL2ZseWluZ2NpcmN1cy5pbwo+ID4+Pj4+PiBMZWlwemlnZXIgU3Ry
LiA3MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4gPj4+Pj4+IEhS
IFN0ZW5kYWwgSFJCIDIxMTY5IMK3IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5l
LCBDaHJpc3RpYW4gWmFncm9kbmljawo+ID4+Pj4+PiAKPiA+Pj4+IAo+ID4+Pj4gTGllYmUgR3LD
vMOfZSwKPiA+Pj4+IENocmlzdGlhbiBUaGV1bmUKPiA+Pj4+IAo+ID4+Pj4gLS0gCj4gPj4+PiBD
aHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIxOTQwMSAw
Cj4gPj4+PiBGbHlpbmcgQ2lyY3VzIEludGVybmV0IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczov
L2ZseWluZ2NpcmN1cy5pbwo+ID4+Pj4gTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYxMDggSGFs
bGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZAo+ID4+Pj4gSFIgU3RlbmRhbCBIUkIgMjExNjkgwrcg
R2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlzdGlhbiBaYWdyb2RuaWNr
Cj4gPj4+PiAKPiA+PiAKPiA+PiBMaWViZSBHcsO8w59lLAo+ID4+IENocmlzdGlhbiBUaGV1bmUK
PiA+PiAKPiA+PiAtLSAKPiA+PiBDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5p
byDCtyArNDkgMzQ1IDIxOTQwMSAwCj4gPj4gRmx5aW5nIENpcmN1cyBJbnRlcm5ldCBPcGVyYXRp
b25zIEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KPiA+PiBMZWlwemlnZXIgU3RyLiA3
MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4gPj4gSFIgU3RlbmRh
bCBIUkIgMjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlz
dGlhbiBaYWdyb2RuaWNrCj4gCj4gCj4gTGllYmUgR3LDvMOfZSwKPiBDaHJpc3RpYW4gVGhldW5l
Cj4gCj4gLS0gCj4gQ2hyaXN0aWFuIFRoZXVuZSDCtyBjdEBmbHlpbmdjaXJjdXMuaW8gwrcgKzQ5
IDM0NSAyMTk0MDEgMAo+IEZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJIIMK3
IGh0dHBzOi8vZmx5aW5nY2lyY3VzLmlvCj4gTGVpcHppZ2VyIFN0ci4gNzAvNzEgwrcgMDYxMDgg
SGFsbGUgKFNhYWxlKSDCtyBEZXV0c2NobGFuZAo+IEhSIFN0ZW5kYWwgSFJCIDIxMTY5IMK3IEdl
c2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5lLCBDaHJpc3RpYW4gWmFncm9kbmljawo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5p
cG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9v
cGVuaXBtaS1kZXZlbG9wZXIK
