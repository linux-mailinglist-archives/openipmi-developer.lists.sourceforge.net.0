Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBD544EBC5
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Nov 2021 18:05:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mlZzK-0007Nr-Eb; Fri, 12 Nov 2021 17:05:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <christophe.jaillet@wanadoo.fr>) id 1mlZzI-0007Nf-7Z
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Nov 2021 17:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MQjD/LcHcZUggG5Sh/c7oTLyaIowpVoumL2lyTW/5Qk=; b=dkR8jbgN49tMqDwhNdnZS1IdUP
 jc+lfzQNKR9kb1oKOZ9kbI0kV1SevsEYOPqTtDLReqCDB2gZdXl/c3N9kCRMsPBrKy4PVT+sRyzD9
 BLelX7MLuCP3LGxE0rjo61/YmRLq00/ljrxheKd/4NiFKGQMEieOMQOnGzpSZu53rjS8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MQjD/LcHcZUggG5Sh/c7oTLyaIowpVoumL2lyTW/5Qk=; b=mOUVUa1U3cUcbMPZKNk9JlWmt9
 MMh2yR0ClMA1vp31qhhcqw/IU/LPqFcnWXV6fD3wg17qiaVZ1u2n3pQOhOvZ3lB30/w4xf24CZ8Lv
 j9+UAKESxQkk1S5S7njopE7nWusPxsOQJgudItASCqg41M29POaDM+GUasM3TjqJHa64=;
Received: from smtp01.smtpout.orange.fr ([80.12.242.123]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mlZzG-00AzRV-Rb
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Nov 2021 17:05:15 +0000
Received: from [192.168.1.18] ([86.243.171.122]) by smtp.orange.fr with ESMTPA
 id lZz8mTvmc1UGBlZz8mGLcE; Fri, 12 Nov 2021 18:05:07 +0100
X-ME-Helo: [192.168.1.18]
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Fri, 12 Nov 2021 18:05:07 +0100
X-ME-IP: 86.243.171.122
To: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 minyard@acm.org, ioanna.alifieraki@gmail.com
References: <20211112165413.7747-1-ioanna-maria.alifieraki@canonical.com>
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <0bfd847b-c70e-8299-8e75-d9d1491c91fa@wanadoo.fr>
Date: Fri, 12 Nov 2021 18:05:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211112165413.7747-1-ioanna-maria.alifieraki@canonical.com>
Content-Language: fr
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Le 12/11/2021 à 17:54, Ioanna Alifieraki a écrit : > Currently
    when removing an ipmi_user the removal is deferred as a work on > the system's
    workqueue. Although this guarantees the free operation [...] 
 
 Content analysis details:   (-2.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [80.12.242.123 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [80.12.242.123 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1mlZzG-00AzRV-Rb
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Move remove_work to
 dedicated workqueue
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

TGUgMTIvMTEvMjAyMSDDoCAxNzo1NCwgSW9hbm5hIEFsaWZpZXJha2kgYSDDqWNyaXTCoDoKPiBD
dXJyZW50bHkgd2hlbiByZW1vdmluZyBhbiBpcG1pX3VzZXIgdGhlIHJlbW92YWwgaXMgZGVmZXJy
ZWQgYXMgYSB3b3JrIG9uCj4gdGhlIHN5c3RlbSdzIHdvcmtxdWV1ZS4gQWx0aG91Z2ggdGhpcyBn
dWFyYW50ZWVzIHRoZSBmcmVlIG9wZXJhdGlvbiB3aWxsCj4gb2NjdXIgaW4gbm9uIGF0b21pYyBj
b250ZXh0LCBpdCBjYW4gcmFjZSB3aXRoIHRoZSBpcG1pX21zZ2hhbmRsZXIgbW9kdWxlCj4gcmVt
b3ZhbCAoc2VlIFsxXSkgLiBJbiBjYXNlIGEgcmVtb3ZlX3VzZXIgd29yayBpcyBzY2hlZHVsZWQg
Zm9yIHJlbW92YWwKPiBhbmQgc2hvcnRseSBhZnRlciBpcG1pX21zZ2hhbmRsZXIgbW9kdWxlIGlz
IHJlbW92ZWQgd2UgY2FuIGVuZCB1cCBpbiBhCj4gc2l0dWF0aW9uIHdoZXJlIHRoZSBtb2R1bGUg
aXMgcmVtb3ZlZCBmaXN0IGFuZCB3aGVuIHRoZSB3b3JrIGlzIGV4ZWN1dGVkCj4gdGhlIHN5c3Rl
bSBjcmFzaGVzIHdpdGggOgo+IEJVRzogdW5hYmxlIHRvIGhhbmRsZSBwYWdlIGZhdWx0IGZvciBh
ZGRyZXNzOiBmZmZmZmZmZmMwNWMzNDUwCj4gUEY6IHN1cGVydmlzb3IgaW5zdHJ1Y3Rpb24gZmV0
Y2ggaW4ga2VybmVsIG1vZGUKPiBQRjogZXJyb3JfY29kZSgweDAwMTApIC0gbm90LXByZXNlbnQg
cGFnZQo+IGJlY2F1c2UgdGhlIHBhZ2VzIG9mIHRoZSBtb2R1bGUgYXJlIGdvbmUuIEluIGNsZWFu
dXBfaXBtaSgpIHRoZXJlIGlzIG5vCj4gZWFzeSB3YXkgdG8gZGV0ZWN0IGlmIHRoZXJlIGFyZSBh
bnkgcGVuZGluZyB3b3JrcyB0byBmbHVzaCB0aGVtIGJlZm9yZQo+IHJlbW92aW5nIHRoZSBtb2R1
bGUuIFRoaXMgcGF0Y2ggY3JlYXRlcyBhIHNlcGFyYXRlIHdvcmtxdWV1ZSBhbmQgc2NoZWR1bGVz
Cj4gdGhlIHJlbW92ZV93b3JrIHdvcmtzIG9uIGl0LiBXaGVuIHJlbW92aW5nIHRoZSBtb2R1bGUg
dGhlIHdvcmtxdWV1ZSBpcwo+IGZsdXNoZWQgdG8gYXZvaWQgdGhlIHJhY2UuCj4gCj4gWzFdIGh0
dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L2J1Z3MvMTk1MDY2Ngo+IAo+IENjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnCj4gRml4ZXM6IDNiOWE5MDcyMjNkNyAoaXBtaTogZml4IHNsZWVwLWluLWF0
b21pYyBpbiBmcmVlX3VzZXIgYXQgY2xlYW51cCBTUkNVIHVzZXItPnJlbGVhc2VfYmFycmllcikK
PiBTaWduZWQtb2ZmLWJ5OiBJb2FubmEgQWxpZmllcmFraSA8aW9hbm5hLW1hcmlhLmFsaWZpZXJh
a2lAY2Fub25pY2FsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvY2hhci9pcG1pL2lwbWlfbXNnaGFu
ZGxlci5jIHwgOSArKysrKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9t
c2doYW5kbGVyLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYwo+IGluZGV4
IGRlZWQzNTU0MjJmNC4uOWUwYWQyY2NkM2UwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2hhci9p
cG1pL2lwbWlfbXNnaGFuZGxlci5jCj4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2do
YW5kbGVyLmMKPiBAQCAtMTkxLDYgKzE5MSw4IEBAIHN0cnVjdCBpcG1pX3VzZXIgewo+ICAgCXN0
cnVjdCB3b3JrX3N0cnVjdCByZW1vdmVfd29yazsKPiAgIH07Cj4gICAKPiArc3RydWN0IHdvcmtx
dWV1ZV9zdHJ1Y3QgKnJlbW92ZV93b3JrX3dxOwo+ICsKPiAgIHN0YXRpYyBzdHJ1Y3QgaXBtaV91
c2VyICphY3F1aXJlX2lwbWlfdXNlcihzdHJ1Y3QgaXBtaV91c2VyICp1c2VyLCBpbnQgKmluZGV4
KQo+ICAgCV9fYWNxdWlyZXModXNlci0+cmVsZWFzZV9iYXJyaWVyKQo+ICAgewo+IEBAIC0xMjk3
LDcgKzEyOTksNyBAQCBzdGF0aWMgdm9pZCBmcmVlX3VzZXIoc3RydWN0IGtyZWYgKnJlZikKPiAg
IAlzdHJ1Y3QgaXBtaV91c2VyICp1c2VyID0gY29udGFpbmVyX29mKHJlZiwgc3RydWN0IGlwbWlf
dXNlciwgcmVmY291bnQpOwo+ICAgCj4gICAJLyogU1JDVSBjbGVhbnVwIG11c3QgaGFwcGVuIGlu
IHRhc2sgY29udGV4dC4gKi8KPiAtCXNjaGVkdWxlX3dvcmsoJnVzZXItPnJlbW92ZV93b3JrKTsK
PiArCXF1ZXVlX3dvcmsocmVtb3ZlX3dvcmtfd3EsICZ1c2VyLT5yZW1vdmVfd29yayk7Cj4gICB9
Cj4gICAKPiAgIHN0YXRpYyB2b2lkIF9pcG1pX2Rlc3Ryb3lfdXNlcihzdHJ1Y3QgaXBtaV91c2Vy
ICp1c2VyKQo+IEBAIC01MzgzLDYgKzUzODUsOCBAQCBzdGF0aWMgaW50IGlwbWlfaW5pdF9tc2do
YW5kbGVyKHZvaWQpCj4gICAKPiAgIAlhdG9taWNfbm90aWZpZXJfY2hhaW5fcmVnaXN0ZXIoJnBh
bmljX25vdGlmaWVyX2xpc3QsICZwYW5pY19ibG9jayk7Cj4gICAKPiArCXJlbW92ZV93b3JrX3dx
ID0gY3JlYXRlX3NpbmdsZXRocmVhZF93b3JrcXVldWUoImlwbWktbXNnaGFuZGxlci1yZW1vdmUt
d3EiKTsKPiArCj4gICAJaW5pdGlhbGl6ZWQgPSB0cnVlOwo+ICAgCj4gICBvdXQ6Cj4gQEAgLTU0
MDgsNiArNTQxMiw5IEBAIHN0YXRpYyB2b2lkIF9fZXhpdCBjbGVhbnVwX2lwbWkodm9pZCkKPiAg
IAlpbnQgY291bnQ7Cj4gICAKPiAgIAlpZiAoaW5pdGlhbGl6ZWQpIHsKPiArCQlmbHVzaF93b3Jr
cXVldWUocmVtb3ZlX3dvcmtfd3EpOwo+ICsJCWRlc3Ryb3lfd29ya3F1ZXVlKHJlbW92ZV93b3Jr
X3dxKTsKPiArCgpIaSwKCnRoZXJlIGlzIG5vIG5lZWQgdG8gY2FsbCAnZmx1c2hfd29ya3F1ZXVl
KCknIGJlZm9yZSAnZGVzdHJveV93b3JrcXVldWUoKScuCidkZXN0cm95X3dvcmtxdWV1ZSgpJyBh
bHJlYWR5IGRyYWlucyB0aGUgcXVldWUgYmVmb3JlIGRlc3Ryb3lpbmcgaXQsIHNvCnRoZXJlIGlz
IG5vIG5lZWQgdG8gZmx1c2ggaXQgZXhwbGljaXRseS4KCkp1c3QgbXkgMmMuCgpDSgoKPiAgIAkJ
YXRvbWljX25vdGlmaWVyX2NoYWluX3VucmVnaXN0ZXIoJnBhbmljX25vdGlmaWVyX2xpc3QsCj4g
ICAJCQkJCQkgJnBhbmljX2Jsb2NrKTsKPiAgIAo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0
Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
