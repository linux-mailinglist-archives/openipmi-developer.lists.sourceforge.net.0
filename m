Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EE496C9EB
	for <lists+openipmi-developer@lfdr.de>; Wed,  4 Sep 2024 23:58:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sly0q-0002cU-9H;
	Wed, 04 Sep 2024 21:58:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sly0p-0002cO-Hp
 for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Sep 2024 21:58:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PUC+uQISGHQ5jVT1STade2cAcO2zC+t6ZT5+g59dS8w=; b=WBZtGSDD5RReGnbSdTeNUZwaVx
 ibCmbTfRFuOvahy6moHJDBJOAzBdW6kh0olFAcz/nmUbqwGslm/eV8rXUdgLFS2vAOzMmpWxa9Lnn
 eQCwJSA8y17IYG/1sUAXTZN+ZWxq5QFLNY9z2FelfPWxinFC5h/jKIWqfZYLMyzOkXFI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PUC+uQISGHQ5jVT1STade2cAcO2zC+t6ZT5+g59dS8w=; b=JZfDSTygn/mVjx1W/CdjMThryg
 E05EPuCzRg4rRWCCKzU5vP4EFFfjF3oMJMnhCv80Nv+EubyAatgp1JWhWIANIV9qQ6hnBylP4SjgC
 bCs7xqLvm4pjDNIaZwCTglrwVxvKQqZfgn1tcQO2OorccellWtoyblPgxl+y8Bs00mc8=;
Received: from mail-qt1-f169.google.com ([209.85.160.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sly0o-0002aP-LS for openipmi-developer@lists.sourceforge.net;
 Wed, 04 Sep 2024 21:58:03 +0000
Received: by mail-qt1-f169.google.com with SMTP id
 d75a77b69052e-456768fb0a6so692341cf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 04 Sep 2024 14:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1725487077; x=1726091877;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PUC+uQISGHQ5jVT1STade2cAcO2zC+t6ZT5+g59dS8w=;
 b=D+Vp12nD5FCjWyiGAHImGh3wAo4o86+omCSpUj1TqbQdcBNgOtljIfBde4wQS/QhkE
 0kz0GFbF0fe6nIQ00hK/BIXmZyom5CGxKWHHxB9pZZ99CpclkgCCMHaTFgvEY+NktL2C
 l/FHP7Zljju+i6s6RFkqe9TQrAmTgBWJ2Z27TX4bnZPc9f8mDWcucLFV3D6zkXQio38G
 LTMtNL2pIf9D0Lr0Z638DLwyDz1+TWKasonpkROQ0azGgi9tZG21Jt/2KOJFvA+x0XkC
 PjmwaT9qp8KmKz6Dzev+C6VfM8iwt9LgMqGPBxAR0X3lDd1TQ1VNWuuVs4ij/Q3m8ygg
 DioA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725487077; x=1726091877;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PUC+uQISGHQ5jVT1STade2cAcO2zC+t6ZT5+g59dS8w=;
 b=G0zUwcuivosBmdfVQOtLCZ/7w37/8UdOU7i5ZU5ndmY17faJ00GAtehLjbFxNG2jgg
 nLMOYxe9oK5XiEaECQEtoGoNZjrgVkshg2dYzkO4Oh2SiqQcsdZvgIYtbQkOq7Ge8hYM
 Y8zoBEluZGrELUatggL/zbdu+oozeWZ6q00TzvEwrsFKGtLG56eAAmQojMscYc6tq8nk
 irSHyazD37OO05HxWXhoNshU4qHQC5jgE2s9ILp7q1wQnEekZMgWixOTWmMns0wOMrxe
 Qg9hZz0fcseKmdLqoSiSWAv1f+XHGDwOBKPC9LS7fwxiIf1vO1cEGd/GXEW6TllqMNq4
 inrA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX5N0j2M6n9HDn4Oe7ewvPJQNA/93dz6sW42hpt95WMlGBeO9Doj5uxh3GAHWcauCs8V+BMqmjF3M2by8JtUoum5Ns=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwKw9VjtQAk8TOd6PV+jEH3bBT/daKgeSfERcYB2++D8xSD1xv/
 qUKGlHnhFdO4I40gbxJ4fYxIBa6Ff4hGanhIrKFba2ouLWxyUvPmY53+c4vkOkLZ90OD3RCcrzL
 qJLUEpg==
X-Google-Smtp-Source: AGHT+IEddVeItfFcf9pz4MFnAMr7VK+zsdERClwM2k4p8pf3Nz45p5Sd8jQeznKvm0aA1UymO2/9oQ==
X-Received: by 2002:a05:6820:168d:b0:5d6:c77:fb85 with SMTP id
 006d021491bc7-5dfacc104dfmr19656292eaf.0.1725486566938; 
 Wed, 04 Sep 2024 14:49:26 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ba64:652b:aeb0:4f05])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-5dfa05526c7sm2516413eaf.29.2024.09.04.14.49.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2024 14:49:26 -0700 (PDT)
Date: Wed, 4 Sep 2024 16:49:24 -0500
From: Corey Minyard <corey@minyard.net>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <ZtjV5DoZXPYM1NJx@mail.minyard.net>
References: <20240904041213.53052-1-zhangjiao2@cmss.chinamobile.com>
 <004f59c4-7401-473f-b15f-02aa5151374b@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004f59c4-7401-473f-b15f-02aa5151374b@wanadoo.fr>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Sep 04, 2024 at 07:41:32PM +0200, Christophe JAILLET
    via Openipmi-developer wrote: > Le 04/09/2024 à 06:12, zhangjiao2 a écrit :
    > > From: zhang jiao <zhangjiao2@cmss.chinamobile.com> > > > [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.169 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.169 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sly0o-0002aP-LS
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Use devm_kasprintf
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
Reply-To: corey@minyard.net
Cc: minyard@acm.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, zhangjiao2 <zhangjiao2@cmss.chinamobile.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gV2VkLCBTZXAgMDQsIDIwMjQgYXQgMDc6NDE6MzJQTSArMDIwMCwgQ2hyaXN0b3BoZSBKQUlM
TEVUIHZpYSBPcGVuaXBtaS1kZXZlbG9wZXIgd3JvdGU6Cj4gTGUgMDQvMDkvMjAyNCDDoCAwNjox
MiwgemhhbmdqaWFvMiBhIMOpY3JpdMKgOgo+ID4gRnJvbTogemhhbmcgamlhbyA8emhhbmdqaWFv
MkBjbXNzLmNoaW5hbW9iaWxlLmNvbT4KPiA+IAo+ID4gVXNlIGRldm1fa2FzcHJpbnRmIHRvIHNp
bXBsaWZ5IGNvZGUuCj4gCj4gSGksCj4gCj4gSSBkb24ndCB0aGluayB0aGF0IGl0IGlzIGNvcnJl
Y3QgYmVjYXVzZSBfX2lwbWlfYm1jX3JlZ2lzdGVyKCkgaXMgbm90IGEKPiBwcm9iZSBmdW5jdGlv
biBhbnMgaXMgbm90IGNhbGxlZCBmcm9tIGEgcHJvYmUgZnVuY3Rpb24uIFNvIGl0IGlzIHJlYWxs
eQo+IHVubGlrZWx5IHRoYXQgYSBkZXZtXyBmdW5jdGlvbiBpcyBjb3JyZWN0Lgo+IAo+IFRoZSBr
YXNwcmludGYoKSB5b3UgYXJlIHJlbW92aW5nIGlzIGJhbGFuY2VkIGJ5IGEga2ZyZWUoKSBpbgo+
IF9faXBtaV9ibWNfdW5yZWdpc3RlcigpLgo+IFNvIHlvdSBwYXRjaCB3b3VsZCBsZWFkIHRvIGEg
cG90ZW50aWFsIGRvdWJsZS1mcmVlIGlzc3VlLgoKWWVzLCB0aGlzIGlzIGluY29ycmVjdCBmcm9t
IGEgbnVtYmVyIG9mIHBvaW50cyBvZiB2aWV3LgoKLWNvcmV5Cgo+IAo+IENKCj4gCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IHpoYW5nIGppYW8gPHpoYW5namlhbzJAY21zcy5jaGluYW1vYmlsZS5j
b20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2doYW5kbGVyLmMgfCA5
ICsrLS0tLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0
aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9tc2do
YW5kbGVyLmMgYi9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYwo+ID4gaW5kZXgg
ZTEyYjUzMWY1YzJmLi41ZDc4YjFmZTQ5YTggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2NoYXIv
aXBtaS9pcG1pX21zZ2hhbmRsZXIuYwo+ID4gKysrIGIvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9t
c2doYW5kbGVyLmMKPiA+IEBAIC0zMjEzLDcgKzMyMTMsNyBAQCBzdGF0aWMgaW50IF9faXBtaV9i
bWNfcmVnaXN0ZXIoc3RydWN0IGlwbWlfc21pICppbnRmLAo+ID4gICAJaWYgKGludGZfbnVtID09
IC0xKQo+ID4gICAJCWludGZfbnVtID0gaW50Zi0+aW50Zl9udW07Cj4gPiAtCWludGYtPm15X2Rl
dl9uYW1lID0ga2FzcHJpbnRmKEdGUF9LRVJORUwsICJpcG1pJWQiLCBpbnRmX251bSk7Cj4gPiAr
CWludGYtPm15X2Rldl9uYW1lID0gZGV2bV9rYXNwcmludGYoaW50Zi0+c2lfZGV2LCBHRlBfS0VS
TkVMLCAiaXBtaSVkIiwgaW50Zl9udW0pOwo+ID4gICAJaWYgKCFpbnRmLT5teV9kZXZfbmFtZSkg
ewo+ID4gICAJCXJ2ID0gLUVOT01FTTsKPiA+ICAgCQlkZXZfZXJyKGludGYtPnNpX2RldiwgIlVu
YWJsZSB0byBhbGxvY2F0ZSBsaW5rIGZyb20gQk1DOiAlZFxuIiwKPiA+IEBAIC0zMjI2LDcgKzMy
MjYsNyBAQCBzdGF0aWMgaW50IF9faXBtaV9ibWNfcmVnaXN0ZXIoc3RydWN0IGlwbWlfc21pICpp
bnRmLAo+ID4gICAJaWYgKHJ2KSB7Cj4gPiAgIAkJZGV2X2VycihpbnRmLT5zaV9kZXYsICJVbmFi
bGUgdG8gY3JlYXRlIHN5bWxpbmsgdG8gYm1jOiAlZFxuIiwKPiA+ICAgCQkJcnYpOwo+ID4gLQkJ
Z290byBvdXRfZnJlZV9teV9kZXZfbmFtZTsKPiA+ICsJCWdvdG8gb3V0X3VubGluazE7Cj4gPiAg
IAl9Cj4gPiAgIAlpbnRmLT5ibWNfcmVnaXN0ZXJlZCA9IHRydWU7Cj4gPiBAQCAtMzIzNywxMSAr
MzIzNyw2IEBAIHN0YXRpYyBpbnQgX19pcG1pX2JtY19yZWdpc3RlcihzdHJ1Y3QgaXBtaV9zbWkg
KmludGYsCj4gPiAgIAlpbnRmLT5pbl9ibWNfcmVnaXN0ZXIgPSBmYWxzZTsKPiA+ICAgCXJldHVy
biBydjsKPiA+IC0KPiA+IC1vdXRfZnJlZV9teV9kZXZfbmFtZToKPiA+IC0Ja2ZyZWUoaW50Zi0+
bXlfZGV2X25hbWUpOwo+ID4gLQlpbnRmLT5teV9kZXZfbmFtZSA9IE5VTEw7Cj4gPiAtCj4gPiAg
IG91dF91bmxpbmsxOgo+ID4gICAJc3lzZnNfcmVtb3ZlX2xpbmsoJmludGYtPnNpX2Rldi0+a29i
aiwgImJtYyIpOwo+IAo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdAo+IE9wZW5pcG1p
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFp
bGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVy
Cg==
