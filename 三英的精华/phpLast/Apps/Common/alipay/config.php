<?php
$config = array (	
		//应用ID,您的APPID。
		'app_id' => "2016080500174267",

		//商户私钥
		'merchant_private_key' => "MIIEpAIBAAKCAQEApt6YqQdvbirwN/kPVI5BHyfdayZ7/+jEm9AWsId+XtUZje/tB749pShhAvrlIQePAAvfGp21kOZBl3M1ytpCrqGBjxlX1nJpGjoDl0wSieicREYKJOhKo1ydK1qcRczSmhW8rm2gSLaLz5/RBUvFmopsHscQaVfZZB7IznAtsqoCSzH/a63hW4r8aZ4exfWGz7A98wm0WXMba/ymqta/FLWEaAWT8WX+WfgpE6rt9uZegU1eZktya/J7uHArb31s9jKkpFIiT8ivk1orDeRMtWaq7XpCQ+/+PnTQIoUv5OXvTkoMi3aXBAXVMO7OR23j7Qyk3Z3ii+Hu83Vyi1m/xQIDAQABAoIBAFiEqjy4Cf9J3cYDY4N6NsddMVKexpZ5FpqE5xRbu8h4iKbHiFhcLX1IDzYye4tq5AulQINw95jW3CKH5hgmccsLN5v+WJ8Ub/aOocsHeqoXb5W0BbuQUc+Y2HLgDRfl0C4Wq9Fnq+gGleHcqFeD213gYfxtoqIPDO3UercvwL4OH+IQ6pDj+Q9CRvwX+oKy77BTSS3Wba3jVMKswThSHAnk4lXdtkadK1BjEntQnOTnAPcGWg8SLRJcjt7zd9eSlvKiETXrnuizXfOl9zsJ7NIgYTUCYRutbpYE30LPDyvn6tU39xTMFuTp5EYU65gesqfXBxZdpfaBEWzEiJbEub0CgYEA1fAN4r79lg/SJXR5oAFd48koZe0394xRils+g7AnIXmI1efNz27BAYcWBx9pU/fAnfbqPDHM7ZyCGQcUC0/noOKbjhpOtCITEm4Qk0ognNwxcWv1OCN/h4jsouinYqhLZqttQuHx/PNaPCRztswNJPrgIkYLv2wCsD6wqYLzoPcCgYEAx61/m+nxi2NR/v3PWA1E336YrlQRs9Cx8UeisVs6uoI91H/g9oPXbBuRXkR/g6TarCo41BC/ux0kz1N97xLC/8/70zKqhaExV332S5Rc6ZKFolNjk/Ih2LtS5eVdgs/RknkedIvt5AL7kuwdpf3rgJQgbUGnHxSoKEys4yoZsiMCgYApua4boUB4OhG0eGkYSevz91HHv2KBB38HyxAAQyT+pGOJxLIhWOqPz7b+IKQ8Wj/ZD0VUBCqB1VqSYw0Hv8ffWxMXvg3HmDW8DHdzIqwFq/SAuJuVHWdMGep9Q38SANzj419mAgdeXGAnBr0C0/1kTwHT7XFxHjHQCgoOpZm6tQKBgQCb8a06qC+Dq9LK8ZAwdVR3s5gsde3JYFDIXij6mIQ6SyNcxW59OCRTAwi59Ycc2fAKC4OMY3RJ/w3TeaJdx2pRfS5wGB7C9Evjx7VF+53AsTT6vGOFlNHIQSwR7drlIcbLvRoC7ZGhxI6ThSH2lGOLbKQSj/akOG7H4nIXi7a7vwKBgQCJ7em39C1kC4gO1KIxdG+W0SpeZuBl7hKmMqWc9heM3Dxytb+8N7z9lByjxW1/Lcz2ojAwa6+vLmqvTCZ+8A3WyZuvod2vgQjZmCs085Su5i9d7IohbWHhEuhmr+Wc9IbE5BkPyUkhCgnmnEpTg4r8X95nnVbD5eIfH9ruDbKYhw==",
		
		//异步通知地址
		'notify_url' => "http://testpay.mqu.cn/User/Alipay/notifyUrl",
		
		//同步跳转
		'return_url' => "http://testpay.mqu.cn/User/Alipay/returnUrl",

		//编码格式
		'charset' => "UTF-8",

		//签名方式
		'sign_type'=>"RSA2",

		//支付宝网关
		'gatewayUrl' => "https://openapi.alipaydev.com/gateway.do",

		//支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
		'alipay_public_key' => "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyhfsWnUQDS+pCClDBt4VJSh1E4YliWQZRi7FLTFHbRsT/3DRkWrkO+WLwrqNIARAvy3smpbBoMaGrg71XsvIhHjnQpgEOeNZYh8bAfgM9gi437iEXNMsiL6DtVS4Yv3xgiTKhS1S2hIOUV6fcJAkeu5Kya7LPFFL5HycdMtX6G2qFdQ5ux3pLIbK8T5+rcGt+uD+EaQDeDfh40M2ruL1C2Ci9HW2SPDrfHmJQ5iOzDOdrCFg7jdGm53GMM9PeOQufP29HSc+vdwcBybLSVE6cQ6a9ShS8IT2pnclWKScm82gQZHSwYqISDXU9hZQmuUZ7sjv9ICvHqCnLC5c+tMNowIDAQAB",
);