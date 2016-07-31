package np.com.mshrestha.bookstore.service.impl;

import java.math.BigInteger;
import java.security.SecureRandom;

import org.springframework.stereotype.Service;
import np.com.mshrestha.bookstore.service.SessionIdentifierGeneratorService;

@Service
public class SessionIdentifierGeneratorServiceImpl implements SessionIdentifierGeneratorService {


	private SecureRandom random = new SecureRandom();

	  public String nextSessionId() {
	    return new BigInteger(130, random).toString(32);
	  }

}
